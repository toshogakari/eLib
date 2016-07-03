import React, { Component } from 'react';
import Book  from './Book';

export default class Books extends Component {
  render() {
    const { books } = this.props;
    let bookNodes = books.map((book) => {
      return <Book key={book.id} book={book} />
    });
    return <div className="row">{bookNodes}</div>
  }
}