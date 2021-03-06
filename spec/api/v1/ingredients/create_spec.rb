require 'rails_helper'

RSpec.describe "ingredients#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/ingredients", payload
  end

  describe 'basic create' do
    let(:params) do
      attributes_for(:ingredient)
    end
    let(:payload) do
      {
        data: {
          type: 'ingredients',
          attributes: params
        }
      }
    end

    it 'works' do
      expect(IngredientResource).to receive(:build).and_call_original
      expect {
        make_request
        expect(response.status).to eq(201), response.body
      }.to change { Ingredient.count }.by(1)
    end
  end
end
