document.addEventListener("DOMContentLoaded", function() {

    /**
     * Move Mobile Icon
     */
    let mobytic_megamenu = document.querySelector('.ets_mm_megamenu');
    let mobytic_mobile_icon_slot = document.querySelector('#mobytic_mobile_icon_slot');
    let mobytic_megamenu_slot = document.querySelector('#mobytic_megamenu_slot');
    if (window.innerWidth < 768) {
        mobytic_mobile_icon_slot.appendChild(mobytic_megamenu);
    } else if (window.innerWidth > 768) {
        mobytic_megamenu_slot.appendChild(mobytic_megamenu);
        console.log('hello');
    }
    
    window.addEventListener('resize', function(event) {
        let mobytic_megamenu = document.querySelector('.ets_mm_megamenu');
        let mobytic_mobile_icon_slot = document.querySelector('#mobytic_mobile_icon_slot');
        let mobytic_megamenu_slot = document.querySelector('#mobytic_megamenu_slot');
        if (window.innerWidth < 768) {
            mobytic_mobile_icon_slot.appendChild(mobytic_megamenu);
        } else if (window.innerWidth > 768) {
            mobytic_megamenu_slot.appendChild(mobytic_megamenu);
            console.log('hello');
        }
    });

    
    /**
     * Mega Menu Content Height
     */
    if (window.innerWidth > 992) {
      let mm_li_tab = document.querySelectorAll('.mm_menus_ul > .mm_menus_li_tab > .mm_columns_ul_tab');

      mm_li_tab.forEach((tab) => {
        let tab_lvl_1 = tab.querySelectorAll('.mm_tabs_li');
        let tab_lvl_1_height = 0;

        tab_lvl_1.forEach((li) => {
          tab_lvl_1_height += li.offsetHeight;
        });

        tab_lvl_1.forEach((li) => {
          if (li.querySelector('.mm_columns_contents_ul')) {

            if (tab_lvl_1_height < 400) {
              li.querySelector('.mm_columns_contents_ul').style.height = '400px';
            } else {
              li.querySelector('.mm_columns_contents_ul').style.height = (tab_lvl_1_height) + 'px';
            }

          }
        });

        tab_lvl_1_height = 0;
      });
    }


    window.addEventListener('resize', function(event) {
      if (window.innerWidth > 992) {
        let mm_li_tab = document.querySelectorAll('.mm_menus_ul > .mm_menus_li_tab > .mm_columns_ul_tab');
  
        mm_li_tab.forEach((tab) => {
          let tab_lvl_1 = tab.querySelectorAll('.mm_tabs_li');
          let tab_lvl_1_height = 0;
  
          tab_lvl_1.forEach((li) => {
            tab_lvl_1_height += li.offsetHeight;
          });
  
          tab_lvl_1.forEach((li) => {
            if (li.querySelector('.mm_columns_contents_ul')) {
  
              if (tab_lvl_1_height < 400) {
                li.querySelector('.mm_columns_contents_ul').style.height = '400px';
              } else {
                li.querySelector('.mm_columns_contents_ul').style.height = (tab_lvl_1_height) + 'px';
              }
  
            }
          });
  
          tab_lvl_1_height = 0;
        });
      }
    });




    if (document.querySelectorAll('i.mm-title')) {
        let mm_titles = document.querySelectorAll('i.mm-title');
    
        mm_titles.forEach((title) => {
          title.style.display = 'none';
          title.parentElement.style.fontWeight = 'bold';
          title.parentElement.parentElement.parentElement.classList.remove('mm_tab_has_child');
        });
    }

    if (document.querySelectorAll('i.mm-title-with-child')) {
        let mm_titles_with_child = document.querySelectorAll('i.mm-title-with-child');
    
        mm_titles_with_child.forEach((title) => {
          title.style.display = 'none';
          title.parentElement.style.fontWeight = 'bold';
        });
    }

    if (document.querySelectorAll('i.mm-title-child-nochild')) {
        let mm_titles_child_noChild = document.querySelectorAll('i.mm-title-child-nochild');
    
        mm_titles_child_noChild.forEach((title) => {
          title.parentElement.parentElement.parentElement.classList.remove('mm_tab_has_child');
        });
    }

    if (document.querySelectorAll('i.mm-title-no-child')) {
        let mm_titles_noChild = document.querySelectorAll('i.mm-title-no-child');
    
        mm_titles_noChild.forEach((title) => {
          title.style.display = 'none';
          title.parentElement.parentElement.parentElement.classList.remove('mm_tab_has_child');
        });
    }
  });