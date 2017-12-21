import React, { Component } from 'react';
import logo from './pictures/GAB-Banner-01.png';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom'

import NavBar from './components/NavBar.js'
import HomePage from './components/HomePage.js'
import Contacts from './components/Contacts.js'
import Organizations from './components/Organizations.js'
import Invoices from './components/Invoices.js'
import Pep from './components/Pep.js'
import StationGroups from './components/StationGroups.js'
import Stations from './components/Stations.js'
import Products from './components/Products.js'

class App extends Component {
  render() {
    return (
      <div>
      <Router>
        <div>
          <NavBar />            
          <Switch>
            <Route exact path='/' component={HomePage} />
            <Route exact path='/contacts' component={Contacts} />
            <Route exact path='/organizations' component={Organizations} />
            <Route exact path='/station_groups' component={StationGroups} />
            <Route exact path='/stations' component={Stations} />
            <Route exact path='/pep' component={Pep} />
            <Route exact path='/invoices' component={Invoices} />
            <Route exact path='/products' component={Products} />
          </Switch>
        </div>
      </Router>
      </div>
    );
  }
}

export default App;
