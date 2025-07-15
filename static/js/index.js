const params = new URLSearchParams(window.location.search);
const contentOnly = params.get("contentOnly") === "true";

if (contentOnly) {
  const div = document.getElementById("content-wrapper");
  div?.classList.add("content-only");
}
