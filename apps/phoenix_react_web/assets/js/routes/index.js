import React from 'react'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'
import App from '../containers/App'
import { SomeContainer } from '../containers/SomeContainer'
import NotFound from '../components/NotFound'

const Routes = () => (
  <Router>
    <App>
      <Switch>
        <Route exact path="/app" component={SomeContainer} />
        <Route component={NotFound} />
      </Switch>
    </App>
  </Router>
)

export default Routes
