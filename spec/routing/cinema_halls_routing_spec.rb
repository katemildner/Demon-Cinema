# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CinemaHallsController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/cinema_halls').to route_to('cinema_halls#index')
    end

    it 'routes to #new' do
      expect(get: '/cinema_halls/new').to route_to('cinema_halls#new')
    end

    it 'routes to #show' do
      expect(get: '/cinema_halls/1').to route_to('cinema_halls#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/cinema_halls/1/edit').to route_to('cinema_halls#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/cinema_halls').to route_to('cinema_halls#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/cinema_halls/1').to route_to('cinema_halls#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/cinema_halls/1').to route_to('cinema_halls#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/cinema_halls/1').to route_to('cinema_halls#destroy', id: '1')
    end
  end
end
