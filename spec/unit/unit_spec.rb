require 'rails_helper'

RSpec.describe Book, type: :model do
    subject do
        described_class.new(title: 'harry potter', author: 'J. K. Rowling', price: 9.99, date:  Date.new(1997,6,26))
    end

    it 'is valid with valid attributes' do
        expect(subject).to be_valid
    end

    #rainy day for name
    it 'is not valid without a name' do
        subject.title = nil
        expect(subject).not_to be_valid
    end

    #rainy day for author
    it 'is not valid without an author' do
        subject.author = nil
        expect(subject).not_to be_valid
    end

    #rainy day for price
    it 'is not valid without a price' do
        subject.price = nil
        expect(subject).not_to be_valid
    end

    #rainy day for date
    it 'is not valid without a publication date' do
        subject.date = nil
        expect(subject).not_to be_valid
    end

end
