defmodule Base64 do
  use Rustler, otp_app: :base64, crate: "base64_nif"

  @spec decode(binary, atom) :: binary
  @doc """
  Decodes a base64 encoded string into the original string.

  Accepts the following options as a second argument:
    :standard (default)
    :standard_no_pad
    :url_safe
    :url_safe_no_pad
    :imap_map7
    :crypt

  Example:
    iex> Base64.decode("aGVsbG8=")
    "hello"
  """
  def decode(_base64, _opt \\ :standard), do: error()

  @spec encode(binary, atom) :: binary
  @doc """
  Encodes a binary string into base64

  Accepts the following options as a second argument:
    :standard (default)
    :standard_no_pad
    :url_safe
    :url_safe_no_pad
    :imap_map7
    :crypt

  Example:
    iex> Base64.encode("hello")
    "aGVsbG8="
  """
  def encode(_string, _opt \\ :standard), do: error()

  defp error, do: :erlang.nif_error(:nif_not_loaded)
end
