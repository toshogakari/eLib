import React, { Component } from 'react';
import { render } from 'react-dom';
import { Provider } from 'react-redux';
import BooksApplication from './BooksApplication';
import configureStore from '../store/configureStore';
import { setBooks } from '../actions/books';

const store = configureStore();

export default class BooksContainer extends Component {
  componentWillMount() {
    store.dispatch(setBooks(this.props.books));
  }
  
  render() {
    return (
      <Provider store={store}>
        <BooksApplication />
      </Provider>
    )
  }
}