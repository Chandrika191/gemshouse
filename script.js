document.addEventListener("DOMContentLoaded", function () {
    const navLinks = document.querySelectorAll('.navlist .link');
    const homeLink = navLinks[0];  // Home link
    const shopLink = navLinks[1];  // Shop link
    const aboutLink = navLinks[2]; // About Us
    const blogLink = navLinks[3]; // Blog
    const contactLink = navLinks[4]; // Contact


    // Sections that belong to "Home"
    const homeSections = [
        '.section1', '.section2', '.section3',
        '.section4', '.section5', '.section6', '.section7',
        '.section8', '.section', '.section9', '.section11', 
        '.section12', '.section13', '.section14',
        '.gemstone'
    ];

    // Sections that belong to "Shop"
    const shopSections = [
        '.section', '.section8', '.section11', '.section12'
    ];
    
    // Sections that belong to "About Us"
    const aboutSections = [
        '.about', '.section11', '.section12'
    ];

    // Sections that belong to "Blog"
    const blogSections = [
      '.section9', '.section11', '.section12'
    ];

    // Sections that belong to "Contact"
    const contactSections = [
      '.contact-section', '.section11', '.section12', '.sign-up-form'
    ];

    function showSections(selectors) {
        // Hide everything first
        [...homeSections, ...shopSections, ...aboutSections, ...blogSections, ...contactSections].forEach(sel => {
            const el = document.querySelector(sel);
            if (el) el.style.display = 'none';
         });


         // Show selected
         selectors.forEach(sel => {
            const el = document.querySelector(sel);
            if (el) {
               // Use 'flex' if it's the contact section
                  if (sel === '.contact-section') {
                      el.style.display = 'flex';
                  }     
                  else {
                   el.style.display = 'block';
                  }
            }
         })
      };   

    shopLink.addEventListener('click', function (event) {
        event.preventDefault();
        showSections(shopSections);
        // Scroll to shop section smoothly
        const shopSection = document.querySelector('.section');
        if (shopSection) shopSection.scrollIntoView({ behavior: 'smooth' });
    });

    homeLink.addEventListener('click', function (event) {
        event.preventDefault();
        showSections(homeSections);
        // Scroll to top
        window.scrollTo({ top: 0, behavior: 'smooth' });
    });


    aboutLink.addEventListener('click', function (event) {
        event.preventDefault();
        showSections(aboutSections);
        const aboutSection = document.querySelector('.about');
        if (aboutSection) aboutSection.scrollIntoView({ behavior: 'smooth' });
    });

    blogLink.addEventListener('click', function (event) {
        event.preventDefault();
        showSections(blogSections);
        const blogSection = document.querySelector('.section9');
        if (blogSection) blogSection.scrollIntoView({ behavior: 'smooth' });
    });

    contactLink.addEventListener('click', function (event) {
        event.preventDefault();
        showSections(contactSections);
        const contactSection = document.querySelector('.contact-section');
        if (contactSection) contactSection.scrollIntoView({ behavior: 'smooth' });
    });
});


document.querySelectorAll('a[href^="#"]').forEach(anchor => {
  anchor.addEventListener("click", function (e) {
    e.preventDefault();
    const target = document.querySelector(this.getAttribute("href"));
    if (target) {
      target.scrollIntoView({ behavior: "smooth" });
    }
  });
});


document.addEventListener("DOMContentLoaded", function () {
  const form = document.getElementById("signupForm");
  const message = document.getElementById("formMessage");

  form.addEventListener("submit", async function (event) {
    event.preventDefault();

    const name = form.name.value.trim();
    const email = form.email.value.trim();
    const phone = form.phone.value.trim();
    const city = form.city.value.trim();
    const country = form.country.value.trim();
    const password = form.password.value.trim();

    if (name && email && phone && city && country && password) {
      const response = await fetch("http://localhost:8080/api/users/signup", {
        method: "POST",
        headers: { "Content-Type": "application/json"},
        body: JSON.stringify({ name, email, phoneNumber: phone, city, country, password})
      });

      const result = await response.text();
      message.textContent = result;
      form.reset();
    } else {
      message.textContent = "Please fill in all fields.";
      message.style.color = "red";
    }
  });
});

document.getElementById('loginBtn').addEventListener('click', async function (e) {
  e.preventDefault();

  const email = document.getElementById('email').value;

  if(!email) {
    alert("Please enter your email.");
    return;
  }

  try {
    const response = await fetch("http://localhost:8080/api/users/check?email=" + encodeURIComponent(email));
    const result = await response.json();

    if (result.status === "registered") {
      alert("Welcome back!");
      showSection("homeSection");
    } else {
      alert("Email not found. Redirecting to sign-up.");
      showSection("signupSection");
    }
  } catch (error) {
    console.error("Error checking email:", error);
    alert("Something went wrong. Please try again later.");
  }
});

function showSection(sectionId) {
  const sections = ["homeSection", "signupSection"];
  sections.forEach(id => {
    document.getElementById(id).style.display = (id === sectionId) ? "block" : "none";
  });

  //Scroll to the section smoothly
  document.getElementById(sectionId).scrollIntoView({ behavior: 'smooth' });
}


// Initially hide all except maybe home or categories
document.getElementById('categories-section').style.display = 'none';
document.getElementById('bracelet-collection').style.display = 'none';
document.getElementById('bracelet-collection1').style.display = 'none';
document.getElementById('garland-collection').style.display = 'none';
document.getElementById('garland-collection1').style.display = 'none';
document.getElementById('yantra-collection').style.display = 'none';
document.getElementById('yantra-collection1').style.display = 'none';
document.getElementById('gemstone-collection').style.display = 'none';
document.getElementById('gemstone-collection1').style.display = 'none';


const navShops = document.getElementById('nav-shops');
const btnBracelets = document.getElementById('btn-bracelets');
const btnGarlands = document.getElementById('btn-garlands');
const btnYantras = document.getElementById('btn-yantras');
const btnGemstones = document.getElementById('btn-gemstones');
const categoriesSection = document.getElementById('categories-section');
const braceletCollection = document.getElementById('bracelet-collection');
const braceletCollection1 = document.getElementById('bracelet-collection1');
const garlandCollection = document.getElementById('garland-collection');
const garlandCollection1 = document.getElementById('garland-collection1');
const yantraCollection = document.getElementById('yantra-collection');
const yantraCollection1 = document.getElementById('yantra-collection1');
const gemstoneCollection = document.getElementById('gemstone-collection');
const gemstoneCollection1 = document.getElementById('gemstone-collection1');

navShops.addEventListener('click', (e) => {
  e.preventDefault();
  // Show categories section and hide bracelet collection
  categoriesSection.style.display = 'block';
  braceletCollection.style.display = 'none';
  braceletCollection1.style.display = 'none';
  garlandCollection.style.display = 'none';
  garlandCollection1.style.display = 'none';
  yantraCollection.style.display = 'none';
  yantraCollection1.style.display = 'none';
  gemstoneCollection.style.display = 'none';
  gemstoneCollection1.style.display = 'none';
});

btnBracelets.addEventListener('click', () => {
  // Hide categories and show bracelet collection
  categoriesSection.style.display = 'none';
  braceletCollection.style.display = 'block';
  braceletCollection1.style.display = 'block';
});

btnGarlands.addEventListener('click', () => {
  // Hide categories and show garland collection
  categoriesSection.style.display = 'none';
  garlandCollection.style.display = 'block';
  garlandCollection1.style.display = 'block';
});

btnYantras.addEventListener('click', () => {
  // Hide categories and show yantra collection
  categoriesSection.style.display = 'none';
  yantraCollection.style.display = 'block';
  yantraCollection1.style.display = 'block';
});

btnGemstones.addEventListener('click', () => {
  // Hide categories and show gemstone collection
  categoriesSection.style.display = 'none';
  gemstoneCollection.style.display = 'block';
  gemstoneCollection1.style.display = 'block';
});



document.addEventListener("DOMContentLoaded", function () {
  const searchToggle = document.getElementById('search-toggle');
  const searchBox = document.getElementById('search-box');
  const searchInput = document.getElementById('search-input');
  const clearSearch = document.getElementById('clear-search');

  if (searchToggle) {
    searchToggle.addEventListener('click', function (e) {
      e.preventDefault();
      searchBox.style.display =
        searchBox.style.display === 'none' || searchBox.style.display === ''
          ? 'block'
          : 'none';
      if (searchBox.style.display === 'block') {
        searchInput.focus();
      }
    });
  }

  if (clearSearch) {
    clearSearch.addEventListener('click', function () {
      searchInput.value = '';
      filterCards();
      searchInput.focus();
    });
  }

  if (searchInput) {
    searchInput.addEventListener('keyup', filterCards);
  }

  function filterCards() {
    const query = searchInput.value.trim().toLowerCase();
    const cards = document.querySelectorAll('.card');
    const noResults = document.getElementById('no-results');
    let matchFound = false;
    let firstMatch = null;

    cards.forEach(card => {
      const titleEl = card.querySelector('.title');
      const title = titleEl ? titleEl.textContent.trim().toLowerCase() : '';

      if (title.includes(query)) {
        card.style.display = '';
        if (!firstMatch) firstMatch = card;
        matchFound = true;
      } else {
        card.style.display = 'none';
      }
    });

    if (noResults) {
      noResults.style.display = matchFound ? 'none' : 'block';
    }

    if (firstMatch) {
      firstMatch.scrollIntoView({ behavior: 'smooth', block: 'center' });
    }
  }
});


//Hamburger section

const list = document.querySelector(".navlist");
const hamburger = document.querySelector(".fa-bars");


hamburger.addEventListener("click", ()=>{

    hamburger.classList.toggle("fa-x");
    list.classList.toggle("navlist-active");

})



// Function to fetch product data from backend

document.addEventListener("DOMContentLoaded", fetchProducts);

function fetchProducts() {
  fetch("http://localhost:8080/api/products")
  .then(response => response.json())
  .then(data => {
    const container = document.getElementById("product-container");
    container.innerHTML = ""; // clear existing content

    data.forEach(product => {
      const productCard = document.createElement("div");
      productCard.classList.add("card");

      // Add dynamic classes
      if (product.isNew) {
        productCard.classList.add("new");
      }
      if (product.isOnSale) {
        productCard.classList.add("sale");
      }

      productCard.innerHTML = `
      <img src="${product.imageUrl}" alt="${product.name}">
      <div class="card-content">
        <p class="title">${product.name}</p>
        <p class="description">${product.description}</p>
          <div class="price">
            <del>Rs. ${(product.price * 1.4).toFixed(2)}</del>
            <span class="amount">Rs. ${product.price.toFixed(2)}</span>
          </div>
        <button class="add-to-cart">Add to Cart</button>
      </div>
      `;

      container.appendChild(productCard);
    });
  })
  .catch(error => {
    console.error("Error fetching products:", error);
  });
}


function addToCart(productId, productName, price, quantity, userEmail) {
  fetch('http://localhost:8080/api/cart/add', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      productId,
      productName,
      price,
      quantity,
      userEmail
    })
  })
  .then(res => res.json())
  .then(data => alert('Added to cart!'))
  .catch(err => console.error('Error:', err));
}


function showOnlyLoginBar() {
  //hide all sections
  document.querySelectorAll("section").forEach((section) => {
    section.style.display = "none";
  });

  //show only login-bar
  const loginBar = document.getElementById("login-bar");
  if (loginBar) {
    loginBar.style.display = "block";
    loginBar.scrollIntoView({ behavior: "smooth" });
  }
}

document.getElementById("loginUser").addEventListener("click", showOnlyLoginBar);



































