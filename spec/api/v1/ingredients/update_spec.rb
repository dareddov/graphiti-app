require 'rails_helper'

RSpec.describe "ingredients#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/ingredients/#{ingredient.id}", payload
  end

  describe 'basic update' do
    let!(:ingredient) { create(:ingredient) }

    let(:payload) do
      {
        data: {
          id: ingredient.id.to_s,
          type: 'ingredients',
          attributes: {
            name: 'New name of ingredient'
          }
        }
      }
    end
    
    it 'updates the resource' do
      expect(IngredientResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { ingredient.reload.attributes }
    end
  end
end
