require 'test_helper'

class PromsControllerTest < ActionController::TestCase
  setup do
    @prom = proms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:proms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prom" do
    assert_difference('Prom.count') do
      post :create, prom: { cant_1: @prom.cant_1, cant_2: @prom.cant_2, cant_3: @prom.cant_3, cant_4: @prom.cant_4, date_end: @prom.date_end, date_start: @prom.date_start, description: @prom.description, image: @prom.image, int_otro: @prom.int_otro, name: @prom.name, price: @prom.price, prod_1: @prom.prod_1, prod_2: @prom.prod_2, prod_3: @prom.prod_3, prod_4: @prom.prod_4, stock: @prom.stock, string_otro: @prom.string_otro, url: @prom.url, valido: @prom.valido }
    end

    assert_redirected_to prom_path(assigns(:prom))
  end

  test "should show prom" do
    get :show, id: @prom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prom
    assert_response :success
  end

  test "should update prom" do
    patch :update, id: @prom, prom: { cant_1: @prom.cant_1, cant_2: @prom.cant_2, cant_3: @prom.cant_3, cant_4: @prom.cant_4, date_end: @prom.date_end, date_start: @prom.date_start, description: @prom.description, image: @prom.image, int_otro: @prom.int_otro, name: @prom.name, price: @prom.price, prod_1: @prom.prod_1, prod_2: @prom.prod_2, prod_3: @prom.prod_3, prod_4: @prom.prod_4, stock: @prom.stock, string_otro: @prom.string_otro, url: @prom.url, valido: @prom.valido }
    assert_redirected_to prom_path(assigns(:prom))
  end

  test "should destroy prom" do
    assert_difference('Prom.count', -1) do
      delete :destroy, id: @prom
    end

    assert_redirected_to proms_path
  end
end
