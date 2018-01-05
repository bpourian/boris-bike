require "DockingStation"

describe DockingStation do

  it {is_expected.to respond_to(:release_bike)}

  it "gets bike and expects it to be working" do
    subject.dock(Bike.new)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "checks that dock is working" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "chech if dock is empty" do
    expect(subject.bikes.empty?).to eq true
  end

  it "does the bike dock successfully" do
    subject.dock(Bike.new)
    test_bike = subject.release_bike
    expect(subject.dock(test_bike).include?(test_bike)).to eq true
  end

  it "returns a stored bike" do
    test_bike = subject.dock(Bike.new)
    subject.dock(test_bike)
    expect(subject.bike).to eq test_bike
  end

  it "raises an error if no bikes are available" do
    expect {subject.release_bike}.to raise_error
  end

end
