<?php
class ModelCatalogMassEdit extends Model {

		        /**
	         * Sets a specials price
	         *
	         */        
	        public function setSpecialPrice($product_id, $price, $customer_groups, $priority, $date_start, $date_end) {
		        
		        foreach($customer_groups as $customer_group_id) {
		        
			        $this->db->query("DELETE FROM " . DB_PREFIX . "product_special WHERE product_id = '" . (int)$product_id . "' AND customer_group_id = '". (int)$customer_group_id ."'");
			
					$this->db->query("INSERT INTO " . DB_PREFIX . "product_special SET product_id = '" . (int)$product_id . "', customer_group_id = '" . (int)$customer_group_id . "', priority = '" . (int)$priority . "', price = '" . (float)$price . "', date_start = '" . $this->db->escape($date_start) . "', date_end = '" . $this->db->escape($date_end) . "'");
				
				}
			}
			
			/** 
			 * Remove a special price
			 *
			 */
			public function removeSpecialPrice($product_id, $customer_groups) {
				foreach($customer_groups as $customer_group_id) {
					$this->db->query("DELETE FROM " . DB_PREFIX . "product_special WHERE product_id = '" . (int)$product_id . "' AND customer_group_id = '". (int)$customer_group_id ."'");
				}
			}
	                
            /**
             * Activates product
             * @param $product_id int product ID
             */
            public function activateProduct($product_id)
            {
                $this->db->query("UPDATE " . DB_PREFIX . "product SET status = 1, date_modified = NOW() WHERE product_id = '" . (int)$product_id . "'");
            }

            /**
             * De-activates products
             * @param $product_id int product ID
             */
            public function deActivateProduct($product_id) {
                $this->db->query("UPDATE " . DB_PREFIX . "product SET status = 0, date_modified = NOW() WHERE product_id = '" . (int)$product_id . "'");
            }

            /**
             * @param $product_id int Product ID
             * @param $category_id int category ID
             */
            public function attachCategory($product_id, $category_id)
            {
                $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . (int)$product_id . "' AND category_id = '" . (int)$category_id . "'");

                if (!$query->num_rows) {
                    $this->db->query("INSERT INTO " . DB_PREFIX . "product_to_category SET product_id = '" . (int)$product_id . "', category_id = '" . (int)$category_id . "'");
                }
            }

            /**
             * @param $product_id int Product ID
             * @param $filter_id int filter ID
             */
            public function attachFilter($product_id, $filter_id)
            {
                $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "product_filter WHERE product_id = '" . (int)$product_id . "' AND filter_id = '" . (int)$filter_id . "'");

                if (!$query->num_rows) {
                    $this->db->query("INSERT INTO " . DB_PREFIX . "product_filter SET product_id = '" . (int)$product_id . "', filter_id = '" . (int)$filter_id . "'");
                }
            }

            /**
             * @param $product_id int Product ID
             * @param $filter_id int Filter ID
             */
            public function detachFilter($product_id, $filter_id)
            {
                $this->db->query("DELETE FROM " . DB_PREFIX . "product_filter WHERE product_id = '" . (int)$product_id . "' AND filter_id = '" . (int)$filter_id . "'");
            }

            /**
             * @param $product_id int Product ID
             * @param $category_id int Category ID
             */
            public function detachCategory($product_id, $category_id)
            {
                $this->db->query("DELETE FROM " . DB_PREFIX . "product_to_category WHERE product_id = '" . (int)$product_id . "' AND category_id = '" . (int)$category_id . "'");
            }


            /**
             * Sets manufacturer
             * @param $product_id int product ID
             * @param $manufacturer_id int Manufacturer ID
             */
            public function attachManufacturer($product_id, $manufacturer_id) {
                $this->db->query("UPDATE " . DB_PREFIX . "product SET manufacturer_id = '". (int)$manufacturer_id . "', date_modified = NOW() WHERE product_id = '" . (int)$product_id . "'");
            }

            /**
             * Detaches manufacturer
             * @param $product_id int product ID
             */
            public function detachManufacturer($product_id) {
                $this->db->query("UPDATE " . DB_PREFIX . "product SET manufacturer_id = 0, date_modified = NOW() WHERE product_id = '" . (int)$product_id . "'");
            }

            /**
             * Sets new price on product
             * @param $product_id int product ID
             */
            public function setNewPrice($product_id, $price) {
                $this->db->query("UPDATE " . DB_PREFIX . "product SET price = '" . (float)$price . "', date_modified = NOW() WHERE product_id = '" . (int)$product_id . "'");
            }


            /**
             * Sets new quantity on product
             * @param $product_id int product ID
             */
            public function setQuantity($product_id, $quantity) {
                $this->db->query("UPDATE " . DB_PREFIX . "product SET quantity = '" . (int)$quantity . "', date_modified = NOW() WHERE product_id = '" . (int)$product_id . "'");
            }
            
          


}
