import React from 'react';
import { connect } from 'react-redux';
import { addFoodEntryToDiary } from '../../actions/food_diary_actions';
import AddFoodForm from './add_food_form';


const mapStateToProps = (state, ownProps) => {
  return {
    food: ownProps.selectedFood,
    diary: ownProps.diary,
    errors: state.ui.errors,
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    addFoodEntry: (diary, foodLogging) => {
      return dispatch(addFoodEntryToDiary(diary, foodLogging));
    }
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(AddFoodForm);
