require "rspec"
require "first_TDD_projects"

describe "Array" do
    describe "#my_uniq" do
        let (:arr){[1,2,1,3,3]}
        let (:arr2){[1, 2, 1, 3, 3]}
        
        it "should return a new array with any duplicate elements removed" do
            expect(arr.my_uniq).to eq([1, 2, 3])
            expect(arr2.my_uniq).to eq([1, 2, 3])
        end
        
        it "should return a new array" do
            expect(arr.my_uniq).not_to be(arr)
            expect(arr2.my_uniq).not_to be(arr2)
        end

        it "should nut use Array#uniq" do
            expect(arr).not_to receive(:uniq)
            expect(arr2).not_to receive(:uniq)
        end
    end

    describe "#two_sum" do
        let(:arr){[-1, 0, 2, -2, 1]}

        it "should return only pairs that contain elements in the array" do
            expect(arr.two_sum.all?{ |p| p.all?{|e| e>=0 && e < arr.count} } ).to eq(true)
        end

        it "should return only pairs that sum to 0" do
            expect(arr.two_sum.all?{|p| (arr[p.first] + arr[p.last]).zero? }).to eq(true)
        end
        
        it "should be sorted" do
            expect(arr.two_sum).to eq(arr.two_sum.sort)
        end
    end

end

describe "#my_transpose" do
    let(:arr){[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
        ]}
        
    it "should not use Array#transpose" do
        expect(arr).not_to receive(:transpose)
    end

    it "should swap rows and columns in 2d array" do
        expect(my_transpose(arr)).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end

end

describe "#stock_picker" do
    let (:arr){[5, 8, 2, 4, 6]}

    it "should return only a single pair in the form of an array" do
        expect(stock_picker(arr).is_a?(Array)).to eq(true)
        expect(stock_picker(arr).count).to eq(2)
    end
    
    it "should return only a pair that contains elements of the array" do
        expect(stock_picker(arr).all?{ |p| p >=0 && p < arr.count} ).to eq(true)
    end

end

p stock_picker([5, 8, 2, 4, 6]) # // => [2,4]