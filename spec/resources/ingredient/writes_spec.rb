require 'rails_helper'

RSpec.describe IngredientResource, type: :resource do
  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'ingredients',
          attributes: attributes_for(:ingredient)
        }
      }
    end

    let(:instance) do
      IngredientResource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { Ingredient.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:ingredient) { create(:ingredient) }

    let(:payload) do
      {
        data: {
          id: ingredient.id.to_s,
          type: 'ingredients',
          attributes: {
            name: 'New name'
          }
        }
      }
    end

    let(:instance) do
      IngredientResource.find(payload)
    end

    it 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { ingredient.reload.updated_at }
      .and change { ingredient.name }.to('New name')
    end
  end

  describe 'destroying' do
    let!(:ingredient) { create(:ingredient) }

    let(:instance) do
      IngredientResource.find(id: ingredient.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { Ingredient.count }.by(-1)
    end
  end
end
