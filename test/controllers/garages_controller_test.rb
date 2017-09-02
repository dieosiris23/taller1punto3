require 'test_helper'

class GaragesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @garage = garages(:one)
  end

  test "should get index" do
    get garages_url, as: :json
    assert_response :success
  end

  test "should create garage" do
    assert_difference('Garage.count') do
      post garages_url, params: { garage: { adress: @garage.adress, businventory: @garage.businventory, capacity: @garage.capacity, manager: @garage.manager } }, as: :json
    end

    assert_response 201
  end

  test "should show garage" do
    get garage_url(@garage), as: :json
    assert_response :success
  end

  test "should update garage" do
    patch garage_url(@garage), params: { garage: { adress: @garage.adress, businventory: @garage.businventory, capacity: @garage.capacity, manager: @garage.manager } }, as: :json
    assert_response 200
  end

  test "should destroy garage" do
    assert_difference('Garage.count', -1) do
      delete garage_url(@garage), as: :json
    end

    assert_response 204
  end
end
