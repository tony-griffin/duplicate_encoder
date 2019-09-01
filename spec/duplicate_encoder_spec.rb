class Encoder
    def execute(input)
        input.chars.map {|letter| input.count(letter) > 1 ? ")" : "(" }.join("")
    end
end

describe Encoder do
    it "Can encode an empty string" do
        expect(subject.execute("")).to eq("")
    end

    it "Can encode a single character" do
        expect(subject.execute("a")).to eq("(")
    end

    it "Can encode a two character string with two different characters" do
        expect(subject.execute("ab")).to eq("((")
    end 
    
    it "Can encode a different two character string with two different characters" do
        expect(subject.execute("ac")).to eq("((")
    end 

    it "Can encode another two character string with two different characters" do
        expect(subject.execute("bc")).to eq("((")
    end 

    it "Can encode a two character string with matching characters" do
        expect(subject.execute("aa")).to eq("))")
    end

    it "Can encode a different two character string with matching characters" do
        expect(subject.execute("bb")).to eq("))")
    end

    it "Can encode another two character string with matching characters" do
        expect(subject.execute("cc")).to eq("))")
    end    

    it "Can encode a three letter string with different letters" do
        expect(subject.execute("abc")).to eq("(((")
    end

    it "Can encode a different three letter string with different letters" do
        expect(subject.execute("def")).to eq("(((")
    end

    it "Can encode another three letter string with different letters" do
        expect(subject.execute("ghi")).to eq("(((")
    end

    it "Can encode a three letter string with matching letters" do
        expect(subject.execute("aaa")).to eq(")))")
    end

    it "Can encode a different three letter string with matching letters" do
        expect(subject.execute("bbb")).to eq(")))")
    end

    it "Can encode another three letter string with matching letters" do
        expect(subject.execute("ccc")).to eq(")))")
    end

    it "Can encode a three letter string with matching and different letters" do
        expect(subject.execute("aab")).to eq("))(")
    end

    it "Can encode a three letter string with matching and different letters, example 2" do
        expect(subject.execute("bba")).to eq("))(")
    end

    it "Can encode a three letter string with matching and different letters, example 3" do
        expect(subject.execute("cca")).to eq("))(")
    end

    it "Can encode a three letter string with matching and different letters, example 4" do
        expect(subject.execute("abb")).to eq("())")
    end

    it "Can encode a three letter string with matching and different letters, example 5" do
        expect(subject.execute("bcc")).to eq("())")
    end

    it "Can encode a three letter string with matching and different letters, example 6" do
        expect(subject.execute("cdd")).to eq("())")
    end

    it "Can encode a three letter string with matching and different letters, example 7" do
        expect(subject.execute("aba")).to eq(")()")
    end

    it "Can encode a three letter string with matching and different letters, example 8" do
        expect(subject.execute("bcb")).to eq(")()")
    end

    it "Can encode a three letter string with matching and different letters, example 9" do
        expect(subject.execute("cdc")).to eq(")()")
    end
    
    it "can encode success" do
        expect(subject.execute("success")).to eq(")())())")
    end
end