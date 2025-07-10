document.addEventListener('DOMContentLoaded', function() {
    const categoryItems = document.querySelectorAll('.category-item');
    let hideTimeout;  // To control the delay before hiding
    let currentVisibleSubcategory = null;  // Track the currently visible subcategory

    categoryItems.forEach(item => {
        const subcategoryList = item.querySelector('.subcategory-list');

        item.addEventListener('mouseover', function() {
            clearTimeout(hideTimeout);  // Clear any existing timeout for hiding

            // Hide the previous subcategory list if one is open
            if (currentVisibleSubcategory && currentVisibleSubcategory !== subcategoryList) {
                currentVisibleSubcategory.style.display = 'none';
            }

            if (subcategoryList) {
                subcategoryList.style.display = 'block';  // Show the current subcategory
                currentVisibleSubcategory = subcategoryList;  // Set the current visible subcategory
            }
        });

        item.addEventListener('mouseleave', function() {
            hideTimeout = setTimeout(function() {
                if (subcategoryList) {
                    subcategoryList.style.display = 'none';  // Hide the subcategory after delay
                    currentVisibleSubcategory = null;  // Reset the current visible subcategory
                }
            }, 300);  // Delay of 300ms before hiding
        });

        if (subcategoryList) {
            subcategoryList.addEventListener('mouseover', function() {
                clearTimeout(hideTimeout);  // Keep subcategory visible when hovering
            });

            subcategoryList.addEventListener('mouseleave', function() {
                hideTimeout = setTimeout(function() {
                    subcategoryList.style.display = 'none';  // Hide the subcategory after delay
                    currentVisibleSubcategory = null;
                }, 300);
            });
        }
    });
});
