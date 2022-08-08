defmodule Base64Test do
  use ExUnit.Case
  doctest Base64

  test "encode/2 encodes data in the correct format" do
    assert "aGVsbG8gdGVzdA==" == Base64.encode("hello test", :standard)
    assert "aGVsbG8gdGVzdA" == Base64.encode("hello test", :standard_no_pad)
    assert "aGVsbG8gdGVzdA==" == Base64.encode("hello test", :url_safe)
    assert "aGVsbG8gdGVzdA" == Base64.encode("hello test", :url_safe_no_pad)
    assert "aGVsbG8gdGVzdA" == Base64.encode("hello test", :imap_map7)
    assert "aGVsbG8gdGVzdA==" == Base64.encode("hello test", :crypto)
  end

  test "decode/2 decodes data from the correct format" do
    assert "hello test" == Base64.decode("aGVsbG8gdGVzdA==", :standard)
    assert "hello test" == Base64.decode("aGVsbG8gdGVzdA", :standard_no_pad)
    assert "hello test" == Base64.decode("aGVsbG8gdGVzdA==", :url_safe)
    assert "hello test" == Base64.decode("aGVsbG8gdGVzdA", :url_safe_no_pad)
    assert "hello test" == Base64.decode("aGVsbG8gdGVzdA", :imap_map7)
    assert "hello test" == Base64.decode("aGVsbG8gdGVzdA==", :crypto)
  end
end
