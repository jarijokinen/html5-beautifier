require "spec_helper"

describe "Beautifier" do
  it "reformats a string 'Hello World' correctly" do
    "Hello World".beautify.should eq(load_template("hello"))
  end

  it "does not reformat a document that is already correctly formatted" do
    html = load_template("hello")
    html.beautify.should eq(html)
  end

  it "indents an HTML5 document correctly" do
    load_template("without_indent").beautify.should eq(load_template("with_indent"))
  end

  it "does not indent preformatted elements" do
    load_template("pre_before").beautify.should eq(load_template("pre_after"))
  end

  it "removes blank lines" do
    load_template("blank_lines_before").beautify.should eq(load_template("blank_lines_after"))
  end

  it "does not remove blank lines inside preformatted elements" do
    load_template("pre_blank_lines_before").beautify.should eq(load_template("pre_blank_lines_after"))
  end
end
