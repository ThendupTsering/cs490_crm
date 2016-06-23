require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { address: @client.address, birthday: @client.birthday, career: @client.career, contact_name: @client.contact_name, email: @client.email, entity_type: @client.entity_type, entry_date: @client.entry_date, entry_point: @client.entry_point, fax_no: @client.fax_no, gender: @client.gender, industry: @client.industry, name: @client.name, phone_no: @client.phone_no, size: @client.size }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { address: @client.address, birthday: @client.birthday, career: @client.career, contact_name: @client.contact_name, email: @client.email, entity_type: @client.entity_type, entry_date: @client.entry_date, entry_point: @client.entry_point, fax_no: @client.fax_no, gender: @client.gender, industry: @client.industry, name: @client.name, phone_no: @client.phone_no, size: @client.size }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
