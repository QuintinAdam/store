PUBLIC_PAGES = [
  {
    name: "Home Page",
    controller: "home",
    action: "index",
    lookup: "home#index"
  },
  {
    name: "Gallery Page",
    controller: "galleries",
    action: "index",
    lookup: "galleries#index"
  },
  {
    name: "Contact Page",
    controller: "contacts",
    action: "new",
    lookup: "contacts#new"
  },
  {
    name: "About Page",
    controller: "high_voltage/pages",
    action: "show",
    id: "about",
    lookup: "high_voltage/pages#show#about"
  },
  {
    name: "Privacy Policy Page",
    controller: "high_voltage/pages",
    action: "show",
    id: "privacy_policy",
    lookup: "high_voltage/pages#show#privacy_policy"
  },
  {
    name: "Review Page",
    controller: "high_voltage/pages",
    action: "show",
    id: "reviews",
    lookup: "high_voltage/pages#show#reviews"
  },
  {
    name: "Site Map Page",
    controller: "high_voltage/pages",
    action: "show",
    id: "sitemap",
    lookup: "high_voltage/pages#show#sitemap"
  },
  {
    name: "Sympathy Page",
    controller: "high_voltage/pages",
    action: "show",
    id: "sympathy",
    lookup: "high_voltage/pages#show#sympathy"
  },
  {
    name: "Terms of Services Page",
    controller: "high_voltage/pages",
    action: "show",
    id: "terms_of_service",
    lookup: "high_voltage/pages#show#terms_of_service"
  },
  {
    name: "Wedding and Events Page",
    controller: "high_voltage/pages",
    action: "show",
    id: "wedding-and-events",
    lookup: "high_voltage/pages#show#wedding-and-events"
  }
]
