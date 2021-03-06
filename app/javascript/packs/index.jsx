import React from 'react';
import ReactDOM from 'react-dom';
import PropTypes from 'prop-types';
import App from '../components/App';
import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link,
  useRouteMatch,
  useParams
} from "react-router-dom";

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Router>
      <div>
        <ul>
          <li>
            <Link to="/register">Register</Link>
          </li>
          <li>
            <Link to="/login">Login</Link>
          </li>
          <li>
            <Link to="/new">Capture a photo</Link>
          </li>
          <li>
            <Link to="/forest">Forest</Link>
          </li>
          <li>
            <Link to="/users">Your userpage</Link>
          </li>
        </ul>

        <Switch>
          <Route path="/register">
            <Register />
          </Route>
          <Route path="/login">
            <Login />
          </Route>
          <Route path="/new">
            <New />
          </Route>
          <Route path="/users">
            <Users />
          </Route>
          <Route path="/forest">
            <Forest />
          </Route>
        </Switch>
      </div>
    </Router>,
  document.body.appendChild(document.createElement('div'))
  )
})

function Register() {
  return <h2>Register</h2>;
}

function Login() {
  return <h2>Login</h2>;
}

function New() {
  return <h2>Capture a photo</h2>;
}

function Forest() {
  return <h2>This is your Forest</h2>;
}

function Users() {
  let match = useRouteMatch();

  return (
    <div>
      <h2>Users</h2>

      <ul>
        <li>
          <Link to={`${match.url}/1`}>User 1</Link>
        </li>
        <li>
          <Link to={`${match.url}/2`}>User 2</Link>
        </li>
      </ul>

      {/* The Users page has its own <Switch> with more routes
          that build on the /topics URL path. You can think of the
          2nd <Route> here as an "index" page for all users, or
          the page that is shown when no topic is selected */}
      <Switch>
        <Route path={`${match.path}/:id`}>
          <Userpage />
        </Route>
        <Route path={match.path}>
          <h3>Please select a user.</h3>
        </Route>
      </Switch>
    </div>
  );
}

function Userpage() {
  let { id } = useParams();
  return <h3>Requested user ID: {id}</h3>;
}