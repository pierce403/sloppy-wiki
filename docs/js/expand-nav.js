/**
 * Expand all navigation sections on desktop viewports so the sidebar shows
 * every page without requiring manual toggles. This mimics the fully expanded
 * tree found on deanpierce.net and makes discovery easier for new visitors.
 */
(function () {
  const DESKTOP_QUERY = "(min-width: 60em)";

  /**
   * Expands every nav toggle and ensures ARIA state stays in sync.
   */
  function expandSidebarNavigation() {
    // Only expand on desktop-sized screens to avoid overwhelming mobile users.
    if (!window.matchMedia(DESKTOP_QUERY).matches) {
      return;
    }

    document.querySelectorAll("input.md-nav__toggle").forEach((toggle) => {
      if (toggle.checked) {
        return;
      }

      toggle.checked = true;

      // Dispatch a change event so MkDocs Material updates aria-expanded values.
      const changeEvent = new Event("change", { bubbles: true });
      toggle.dispatchEvent(changeEvent);
    });
  }

  // Run after initial load and whenever Material performs instant navigation.
  document.addEventListener("DOMContentLoaded", expandSidebarNavigation);
  document.addEventListener("navigationLoaded", expandSidebarNavigation);
})();
