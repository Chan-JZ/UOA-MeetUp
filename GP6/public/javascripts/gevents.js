
/* exported gapiLoaded */
/* exported gisLoaded */
/* exported handleAuthClick */
/* exported handleSignoutClick */

// TODO(developer): Set to client ID and API key from the Developer Console
const CLIENT_ID = '80995453411-gcpjlgvmb4o4a4oiotge2spqcn8co78r.apps.googleusercontent.com';
const API_KEY = 'AIzaSyC5nq5855pwZYwSMUuVQAvkmk7Q9msFlOM';

// Discovery doc URL for APIs used by the quickstart
const DISCOVERY_DOC = 'https://www.googleapis.com/discovery/v1/apis/calendar/v3/rest';

// Authorization scopes required by the API; multiple scopes can be
// included, separated by spaces.
const SCOPES = 'https://www.googleapis.com/auth/calendar.readonly';

let tokenClient;
let gapiInited = false;
let gisInited = false;

// document.getElementById('authorize_button').style.visibility = 'hidden';
// document.getElementById('signout_button').style.visibility = 'hidden';

/**
 * Callback after api.js is loaded.
 */
function gapiLoaded() {
gapi.load('client', intializeGapiClient);
}

/**
 * Callback after the API client is loaded. Loads the
 * discovery doc to initialize the API.
 */
async function intializeGapiClient() {
await gapi.client.init({
  apiKey: API_KEY,
  discoveryDocs: [DISCOVERY_DOC],
});
gapiInited = true;
// maybeEnableButtons();
}

/**
 * Callback after Google Identity Services are loaded.
 */
function gisLoaded() {
tokenClient = google.accounts.oauth2.initTokenClient({
  client_id: CLIENT_ID,
  scope: SCOPES,
  callback: '', // defined later
});
gisInited = true;
// maybeEnableButtons();
}

/**
 * Enables user interaction after all libraries are loaded.
 */
// function maybeEnableButtons() {
// if (gapiInited && gisInited) {
//   document.getElementById('authorize_button').style.visibility = 'visible';
// }
// }

/**
 *  Sign in the user upon button click.
 */
// function handleAuthClick() {
// tokenClient.callback = async (resp) => {
//   if (resp.error !== undefined) {
//     throw (resp);
//   }
//   document.getElementById('signout_button').style.visibility = 'visible';
//   document.getElementById('authorize_button').innerText = 'Refresh';
//   await listUpcomingEvents();
// };

// if (gapi.client.getToken() === null) {
//   // Prompt the user to select a Google Account and ask for consent to share their data
//   // when establishing a new session.
//   tokenClient.requestAccessToken({prompt: 'consent'});
// } else {
//   // Skip display of account chooser and consent dialog for an existing session.
//   tokenClient.requestAccessToken({prompt: ''});
// }
// }

/**
 *  Sign out the user upon button click.
 */
function handleSignoutClick() {
const token = gapi.client.getToken();
if (token !== null) {
  google.accounts.oauth2.revoke(token.access_token);
  gapi.client.setToken('');
  document.getElementById('content').innerText = '';
  document.getElementById('authorize_button').innerText = 'Authorize';
  document.getElementById('signout_button').style.visibility = 'hidden';
}
}

/**
 * Print the summary and start datetime/date of the next ten events in
 * the authorized user's calendar. If no events are found an
 * appropriate message is printed.
 */
async function listUpcomingEvents() {
let response;
try {
  const request = {
    'calendarId': 'primary',
    'timeMin': (new Date()).toISOString(),
    'showDeleted': false,
    'singleEvents': true,
    'maxResults': 10,
    'orderBy': 'startTime',
  };
  response = await gapi.client.calendar.events.list(request);
} catch (err) {
  document.getElementById('content').innerText = err.message;
  return;
}

const events = response.result.items;
if (!events || events.length == 0) {
  document.getElementById('content').innerText = 'No events found.';
  return;
}
// Flatten to string to display
const output = events.reduce(
    (str, event) => `${str}${event.summary} (${event.start.dateTime || event.start.date})\n`,
    'Events:\n');
document.getElementById('content').innerText = output;
}

//Get event from client side for google calendar
function get_c_event(){

  let xhttp = new XMLHttpRequest();

  xhttp.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
          event_list = JSON.parse(this.responseText);
          console.log(event_list);
          // console.log(event_list[0].title);
          // console.log(event_list[0].dStr);

          //Getting values from parsed json
          var title = event_list[0].title;
          var location = event_list[0].address_1 + ", " + event_list[0].address_2 + ", " + event_list[0].address_3;
          var desc = event_list[0].dStr;
          var date = event_list[0].event_date;
          date = date.substring(0, 11);
          var start = date + event_list[0].timestart + ".0";
          var end = date + event_list[0].timeend + ".0"
          var guestList = [{"email": "weilongsg@gmail.com"}];
          console.log(title);
          console.log(location);
          console.log(desc);
          // console.log(date);
          console.log(start);
          console.log(end);


          let new_e = {
            "summary": title,
            "location": location,
            "description": desc,
            "end": {
              "dateTime": end,
              "timeZone": "Australia/Adelaide"
            },
            "start": {
              "dateTime": start,
              "timeZone": "Australia/Adelaide"
            },
            "attendees": guestList
          }

          addEvent(new_e);
      }
  };

  xhttp.open("GET", "/c_event"); // Aligns with the /posts in index.js
  xhttp.send();

}

function addEvent(new_e) {
  console.log("attempting to add event");

  return gapi.client.calendar.events.insert({
    "calendarId": "primary",
    "resource": new_e
  })
      .then(function(response) {
              // Handle the results here (response.result has the parsed body).
              console.log("Response", response);
            },
            function(err) { console.error("Execute error", err); });
}