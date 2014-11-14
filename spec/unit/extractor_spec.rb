module Ddr
  module Extraction
    RSpec.describe Extractor do

      describe "extracting text" do
        subject { described_class.build(:tika) }
        let(:file_path) { File.expand_path("../../fixtures/sample.docx", __FILE__) }
        it "should extract the text content of the file" do
          expect(subject.extract(:text, file_path).read).to match(/This is a sample document./)
        end
      end

      describe "extracting metadata" do
        subject { described_class.build(:tika) }
        let(:file_path) { File.expand_path("../../fixtures/blue-devil.png", __FILE__) }
        it "should extract technical metadata from the file" do
          expect(subject.extract(:metadata, file_path).read.length).to_not eq(0)
        end
      end
    
    end
  end
end
