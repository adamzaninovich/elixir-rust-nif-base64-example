defmodule Base64 do
  use Rustler, otp_app: :base64, crate: "base64_nif"

  @spec decode(binary, atom) :: binary
  def decode(_base64, _opt \\ :standard), do: error()

  @spec encode(binary, atom) :: binary
  def encode(_string, _opt \\ :standard), do: error()

  defp error, do: :erlang.nif_error(:nif_not_loaded)
end
