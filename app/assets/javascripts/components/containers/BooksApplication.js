import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import Books from '../components/Books';
import * as BooksActions from '../actions/books';

function mapStateToProps(state) {
  return {
    books: state.books
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(BooksActions, dispatch);
}

export default connect(mapStateToProps, mapDispatchToProps)(Books);