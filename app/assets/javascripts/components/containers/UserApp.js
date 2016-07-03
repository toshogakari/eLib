import { bindActionCreators } from 'redux';
import { connect } from 'react-redux';
import User from '../components/User';
import * as UserActions from '../actions/user';

function mapStateToProps(state) {
    return {
        user: state.user
    }
}

function mapDispatchToProps(dispatch) {
    return bindActionCreators(UserActions, dispatch);
}

export default connect(mapStateToProps, mapDispatchToProps)(User);