require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Outfit do
  
  it "should return outfit for cold calm snowy" do
    @weather = mock("weather")
    @weather.stub!(:temp).and_return(:cold)
    @weather.stub!(:wind).and_return(:calm)
    @weather.stub!(:prec).and_return(:snowy)
    outfit = Outfit.find(@weather)
    
    outfit.head.garment.should == "ushanka"
    outfit.head.display_text.should == "Avoid red ears"
    
    outfit.body.garment.should == "fur_coat"
    outfit.body.display_text.should == "Fur Coat"
    
    outfit.neck.garment.should == "scarf"
    outfit.neck.display_text.should == "Scarf"
  end
  
  it "should return outfit for cold calm sunny" do
    @weather = mock("weather")
    @weather.stub!(:temp).and_return(:cold)
    @weather.stub!(:wind).and_return(:calm)
    @weather.stub!(:prec).and_return(:sunny)
    outfit = Outfit.find(@weather)
    
    outfit.head.garment.should == "eskimo_hat"
    outfit.head.display_text.should == "Eskimo Hat"
    
    outfit.body.garment.should == "snowsuit"
    outfit.body.display_text.should == "Snow Suit"
    
    outfit.neck.garment.should == "amulet"
    outfit.neck.display_text.should == "Amulet"
  end
  
  
end
