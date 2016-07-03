import React, { Component } from 'react';

export default class Book extends Component {
  render() {
    const {book} = this.props;
    return (
      <div className="col-sm-6 col-md-4 col-lg-3">
        <div className="row article-item">
          <div className="col-sm-3 image">
            <a href={"/books/" + book.id}>
              <img src={book.pc_image_url} />
            </a>
          </div>
          <div className="col-sm-9 summary">
            <section className="content">
              <p><strong>{book.title}</strong></p>
            </section>
            <section className="action">
              <button className="btn btn-xs btn-embossed btn-primary">
                蔵書に入れる
              </button>
              &nbsp;
              <button className="btn btn-xs btn-embossed btn-info">
                ノートを見る
              </button>
            </section>
          </div>
        </div>
      </div>
    )
  }
}