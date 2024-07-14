<?php

require_once 'database.php';

// Function to handle user input and generate response
function handleInput($input)
{
    $input = strtoupper($input);
    $tokens = explode(' ', $input);
    $sql = "SELECT word FROM prof_check WHERE word IN ('" . implode("','", $tokens) . "')";
    $result = query($sql);
    if (mysqli_num_rows($result) > 0) {
        $sql2 = "SELECT response FROM prof_resp";
        $result2 = query($sql2);
        $prof_response = [];
        while ($row = mysqli_fetch_assoc($result2)) {
            $prof_response[] = $row['response'];
        }
        $randomIndex = array_rand($prof_response);
        $randomValue = $prof_response[$randomIndex];
        if ($randomValue) {
            $sql = "SELECT instructions FROM instruction_response";
            $result = query($sql);
            $inst_response = [];
            while ($row = mysqli_fetch_assoc($result)) {
                $inst_response[] = $row['instructions'];
            }
            $randomIndex = array_rand($inst_response);
            $random_inst = $inst_response[$randomIndex];
            return $randomValue . $random_inst . " Or greet me again to start over";
        }
    } else {
        $sql = "SELECT * FROM greet_check WHERE greet IN ('" . implode("','", $tokens) . "')";
        $result = query($sql);
        if (mysqli_num_rows($result) > 0) {
            $sql = "SELECT response FROM greet_response";
            $result = query($sql);
            $greet_response = [];
            while ($row = mysqli_fetch_assoc($result)) {
                $greet_response[] = $row['response'];
            }
            $randomIndex = array_rand($greet_response);
            $randomValue = $greet_response[$randomIndex];
            if ($randomValue) {
                $sql = "SELECT instructions FROM instruction_response";
                $result = query($sql);
                $inst_response = [];
                while ($row = mysqli_fetch_assoc($result)) {
                    $inst_response[] = $row['instructions'];
                }
                $randomIndex = array_rand($inst_response);
                $random_inst = $inst_response[$randomIndex];
                return $randomValue . $random_inst;
            }
        } else {
            if (in_array('CHECK', $tokens)) {
                $sql = "SELECT * FROM training_items WHERE words IN ('" . implode("','", $tokens) . "')";
                $result = query($sql);
                if (mysqli_num_rows($result) == 1) {
                    $result_values = "";
                    while ($row = mysqli_fetch_assoc($result)) {
                        $result_values .= $row['words'] . " ";
                    }
                    $sql = "SELECT * FROM items WHERE `item_name` = '$result_values'";
                    $result = query($sql);
                    if (mysqli_num_rows($result) > 0) {
                        $row = mysqli_fetch_assoc($result);
                        $item_name = $row['item_name'];
                        $sql = "SELECT * FROM warehouse WHERE item_name = '$item_name' AND item_qty > 0";
                        $result = query($sql);
                        if (mysqli_num_rows($result) > 0) {
                            return "YES. The item " . $item_name . " is available";
                        } else {
                            return "No. The item " . $item_name . " has no stocks. Need some alternative? type ALTERNATIVE plus the Medicine you are looking for.";
                        }
                    } else {
                        return "The item " . $result_values . " is not available";
                    }
                } elseif (mysqli_num_rows($result) == 2) {
                    $result_values = [];
                    while ($row = mysqli_fetch_assoc($result)) {
                        $result_values[] = $row['words'];
                    }
                    $item_name1 = $result_values[0] . " " . $result_values[1];
                    $item_name2 = $result_values[1] . " " . $result_values[0];
                    $sql = "SELECT * FROM items WHERE `item_name` = '$item_name1'";
                    $result = query($sql);
                    if (mysqli_num_rows($result) > 0) {
                        $row = mysqli_fetch_assoc($result);
                        $item_name = $row['item_name'];
                        $sql = "SELECT * FROM warehouse WHERE item_name = '$item_name' AND item_qty > 0";
                        $result = query($sql);
                        if (mysqli_num_rows($result) > 0) {
                            return "YES. The item " . $item_name . " is available";
                        } else {
                            return "No. The item " . $item_name . " has no stocks. Need some alternative? type ALTERNATIVE plus the Medicine you are looking for.";
                        }
                    } else {
                        $sql = "SELECT * FROM items WHERE `item_name` = '$item_name2'";
                        $result = query($sql);
                        if (mysqli_num_rows($result) > 0) {
                            $row = mysqli_fetch_assoc($result);
                            $item_name = $row['item_name'];
                            $sql = "SELECT * FROM warehouse WHERE item_name = '$item_name' AND item_qty > 0";
                            $result = query($sql);
                            if (mysqli_num_rows($result) > 0) {
                                return "YES. The item " . $item_name . " is available";
                            } else {
                                return "No. The item " . $item_name . " has no stocks. Need some alternative? type ALTERNATIVE plus the Medicine you are looking for.";
                            }
                        } else {
                            $lengthOfTokens = count($tokens);
                            $input = $tokens[$lengthOfTokens - 2] . " " . $tokens[$lengthOfTokens - 1];
                            return "The item " . $input . " is not available";
                        }
                    }
                } elseif (mysqli_num_rows($result) == 3) {
                    $result_values = [];
                    while ($row = mysqli_fetch_assoc($result)) {
                        $result_values[] = $row['words'];
                    }
                    $item_name1 = $result_values[0] . " " . $result_values[1] . " " . $result_values[2];
                    $item_name2 = $result_values[0] . " " . $result_values[2] . " " . $result_values[1];
                    $item_name3 = $result_values[1] . " " . $result_values[2] . " " . $result_values[0];
                    $item_name4 = $result_values[1] . " " . $result_values[0] . " " . $result_values[2];
                    $item_name5 = $result_values[2] . " " . $result_values[0] . " " . $result_values[1];
                    $item_name6 = $result_values[2] . " " . $result_values[1] . " " . $result_values[0];
                    $sql = "SELECT * FROM items WHERE `item_name` = '$item_name1'";
                    $result = query($sql);
                    if (mysqli_num_rows($result) > 0) {
                        $row = mysqli_fetch_assoc($result);
                        $item_name = $row['item_name'];
                        $sql = "SELECT * FROM warehouse WHERE item_name = '$item_name' AND item_qty > 0";
                        $result = query($sql);
                        if (mysqli_num_rows($result) > 0) {
                            return "YES. The item " . $item_name . " is available";
                        } else {
                            return "No. The item " . $item_name . " has no stocks. Need some alternative? type ALTERNATIVE plus the Medicine you are looking for.";
                        }
                    } else {
                        $sql = "SELECT * FROM items WHERE `item_name` = '$item_name2'";
                        $result = query($sql);
                        if (mysqli_num_rows($result) > 0) {
                            $row = mysqli_fetch_assoc($result);
                            $item_name = $row['item_name'];
                            $sql = "SELECT * FROM warehouse WHERE item_name = '$item_name' AND item_qty > 0";
                            $result = query($sql);
                            if (mysqli_num_rows($result) > 0) {
                                return "YES. The item " . $item_name . " is available";
                            } else {
                                return "No. The item " . $item_name . " has no stocks. Need some alternative? type ALTERNATIVE plus the Medicine you are looking for.";
                            }
                        } else {
                            $sql = "SELECT * FROM items WHERE `item_name` = '$item_name3'";
                            $result = query($sql);
                            if (mysqli_num_rows($result) > 0) {
                                $row = mysqli_fetch_assoc($result);
                                $item_name = $row['item_name'];
                                $sql = "SELECT * FROM warehouse WHERE item_name = '$item_name' AND item_qty > 0";
                                $result = query($sql);
                                if (mysqli_num_rows($result) > 0) {
                                    return "YES. The item " . $item_name . " is available";
                                } else {
                                    return "No. The item " . $item_name . " has no stocks. Need some alternative? type ALTERNATIVE plus the Medicine you are looking for.";
                                }
                            } else {
                                $sql = "SELECT * FROM items WHERE `item_name` = '$item_name4'";
                                $result = query($sql);
                                if (mysqli_num_rows($result) > 0) {
                                    $row = mysqli_fetch_assoc($result);
                                    $item_name = $row['item_name'];
                                    $sql = "SELECT * FROM warehouse WHERE item_name = '$item_name' AND item_qty > 0";
                                    $result = query($sql);
                                    if (mysqli_num_rows($result) > 0) {
                                        return "YES. The item " . $item_name . " is available";
                                    } else {
                                        return "No. The item " . $item_name . " has no stocks. Need some alternative? type ALTERNATIVE plus the Medicine you are looking for.";
                                    }
                                } else {
                                    $sql = "SELECT * FROM items WHERE `item_name` = '$item_name5'";
                                    $result = query($sql);
                                    if (mysqli_num_rows($result) > 0) {
                                        $row = mysqli_fetch_assoc($result);
                                        $item_name = $row['item_name'];
                                        $sql = "SELECT * FROM warehouse WHERE item_name = '$item_name' AND item_qty > 0";
                                        $result = query($sql);
                                        if (mysqli_num_rows($result) > 0) {
                                            return "YES. The item " . $item_name . " is available";
                                        } else {
                                            return "No. The item " . $item_name . " has no stocks. Need some alternative? type ALTERNATIVE plus the Medicine you are looking for.";
                                        }
                                    } else {
                                        $sql = "SELECT * FROM items WHERE `item_name` = '$item_name6'";
                                        $result = query($sql);
                                        if (mysqli_num_rows($result) > 0) {
                                            $row = mysqli_fetch_assoc($result);
                                            $item_name = $row['item_name'];
                                            $sql = "SELECT * FROM warehouse WHERE item_name = '$item_name' AND item_qty > 0";
                                            $result = query($sql);
                                            if (mysqli_num_rows($result) > 0) {
                                                return "YES. The item " . $item_name . " is available";
                                            } else {
                                                return "No. The item " . $item_name . " has no stocks. Need some alternative? type ALTERNATIVE plus the Medicine you are looking for. ";
                                            }
                                        } else {
                                            $lengthOfTokens = count($tokens);
                                            $input = $tokens[$lengthOfTokens - 3] . " " . $tokens[$lengthOfTokens - 2] . " " . $tokens[$lengthOfTokens - 1];
                                            return "The item " . $input . " is not available";
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    $sql = "SELECT not_available FROM not_present";
                    $result = query($sql);
                    $not_available = [];
                    while ($row = mysqli_fetch_assoc($result)) {
                        $not_available[] = $row['not_available'];
                    }
                    $randomIndex = array_rand($not_available);
                    $randomValue = $not_available[$randomIndex];


                    return $randomValue; // add, switch the else in check algo
                }
            } else {
                $sql = "SELECT * FROM training_words WHERE words IN ('" . implode("','", $tokens) . "')";
                $result = query($sql);
                if (mysqli_num_rows($result) > 0) {
                    // Check if any tokens are found in the database
                    $sql = "SELECT * FROM items WHERE what_for IN ('" . implode("','", $tokens) . "')";
                    $result = query($sql);

                    if (mysqli_num_rows($result) > 0) {
                        $row = mysqli_fetch_assoc($result);
                        $use_found = $row['what_for'];

                        // Search for items with the same What_for
                        $sql = "SELECT item_name FROM items WHERE `what_for` = '$use_found'";
                        $result = query($sql);

                        $for_warehouse = [];
                        if (mysqli_num_rows($result) > 0) {
                            while ($row = mysqli_fetch_assoc($result)) {
                                $for_warehouse[] = $row['item_name'];
                            }
                            return $for_warehouse;
                        } else {
                            return "Currently, there is no alternative yet for the medicine you are looking for that is available in our pharmacy."; ///
                        }
                    } else {
                        $sql = "SELECT * FROM training_items WHERE words IN ('" . implode("','", $tokens) . "')";
                        $result = query($sql);
                        if (mysqli_num_rows($result) == 1) {
                            $result_values = "";
                            while ($row = mysqli_fetch_assoc($result)) {
                                $result_values .= $row['words'] . " ";
                            }
                            $sql = "SELECT * FROM items WHERE `item_name` = '$result_values'";
                            $result = query($sql);
                            if (mysqli_num_rows($result) == 1) {
                                $row = mysqli_fetch_assoc($result);
                                $what_for = $row['what_for'];
                                if ($what_for != 'TBA') {
                                    $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$result_values'";
                                    $result = query($sql);
                                    $for_warehouse = [];
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $for_warehouse[] = $row['item_name'];
                                    }
                                    return $for_warehouse;
                                } else {
                                    $sql = "SELECT response FROM no_alt";
                                    $result = query($sql);
                                    $no_alt = [];
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $no_alt[] = $row['response'];
                                    }
                                    $randomIndex = array_rand($no_alt);
                                    $randomValue = $no_alt[$randomIndex];

                                    return $randomValue;
                                }
                            } else {
                                return "The item " . $result_values . " is not found";
                            }
                        } elseif (mysqli_num_rows($result) == 2) {
                            $result_values = [];
                            while ($row = mysqli_fetch_assoc($result)) {
                                $result_values[] = $row['words'];
                            }
                            $item_name1 = $result_values[0] . " " . $result_values[1];
                            $item_name2 = $result_values[1] . " " . $result_values[0];
                            $sql = "SELECT * FROM items WHERE `item_name` = '$item_name1'";
                            $result = query($sql);
                            if (mysqli_num_rows($result) > 0) {
                                $row = mysqli_fetch_assoc($result);
                                $what_for = $row['what_for'];
                                if ($what_for != 'TBA') {
                                    $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name1'";
                                    $result = query($sql);
                                    $for_warehouse = [];
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $for_warehouse[] = $row['item_name'];
                                    }
                                    return $for_warehouse;
                                } else {
                                    $sql = "SELECT response FROM no_alt";
                                    $result = query($sql);
                                    $no_alt = [];
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $no_alt[] = $row['response'];
                                    }
                                    $randomIndex = array_rand($no_alt);
                                    $randomValue = $no_alt[$randomIndex];

                                    return $randomValue;
                                }
                            } else {
                                $sql = "SELECT * FROM items WHERE `item_name` = '$item_name2'";
                                $result = query($sql);
                                if (mysqli_num_rows($result) > 0) {
                                    $row = mysqli_fetch_assoc($result);
                                    $what_for = $row['what_for'];
                                    if ($what_for != 'TBA') {
                                        $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name2'";
                                        $result = query($sql);
                                        $for_warehouse = [];
                                        while ($row = mysqli_fetch_assoc($result)) {
                                            $for_warehouse[] = $row['item_name'];
                                        }
                                        return $for_warehouse;
                                    } else {
                                        $sql = "SELECT response FROM no_alt";
                                        $result = query($sql);
                                        $no_alt = [];
                                        while ($row = mysqli_fetch_assoc($result)) {
                                            $no_alt[] = $row['response'];
                                        }
                                        $randomIndex = array_rand($no_alt);
                                        $randomValue = $no_alt[$randomIndex];

                                        return $randomValue;
                                    }
                                } else {
                                    $lengthOfTokens = count($tokens);
                                    $input = $tokens[$lengthOfTokens - 2] . " " . $tokens[$lengthOfTokens - 1];
                                    return "The item " . $input . " is not available";
                                }
                            }
                        } elseif (mysqli_num_rows($result) == 3) {
                            $result_values = [];
                            while ($row = mysqli_fetch_assoc($result)) {
                                $result_values[] = $row['words'];
                            }
                            $item_name1 = $result_values[0] . " " . $result_values[1] . " " . $result_values[2];
                            $item_name2 = $result_values[0] . " " . $result_values[2] . " " . $result_values[1];
                            $item_name3 = $result_values[1] . " " . $result_values[2] . " " . $result_values[0];
                            $item_name4 = $result_values[1] . " " . $result_values[0] . " " . $result_values[2];
                            $item_name5 = $result_values[2] . " " . $result_values[0] . " " . $result_values[1];
                            $item_name6 = $result_values[2] . " " . $result_values[1] . " " . $result_values[0];
                            $sql = "SELECT * FROM items WHERE `item_name` = '$item_name1'";
                            $result = query($sql);
                            if (mysqli_num_rows($result) > 0) {
                                $row = mysqli_fetch_assoc($result);
                                $sql = "SELECT * FROM items WHERE `item_name` = '$item_name1'";
                                $result = query($sql);
                                if (mysqli_num_rows($result) > 0) {
                                    $row = mysqli_fetch_assoc($result);
                                    $what_for = $row['what_for'];
                                    if ($what_for != 'TBA') {
                                        $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name1'";
                                        $result = query($sql);
                                        $for_warehouse = [];
                                        while ($row = mysqli_fetch_assoc($result)) {
                                            $for_warehouse[] = $row['item_name'];
                                        }
                                        return $for_warehouse;
                                    } else {
                                        $sql = "SELECT response FROM no_alt";
                                        $result = query($sql);
                                        $no_alt = [];
                                        while ($row = mysqli_fetch_assoc($result)) {
                                            $no_alt[] = $row['response'];
                                        }
                                        $randomIndex = array_rand($no_alt);
                                        $randomValue = $no_alt[$randomIndex];

                                        return $randomValue;
                                    }
                                } else {
                                    $sql = "SELECT * FROM items WHERE `item_name` = '$item_name2'";
                                    $result = query($sql);
                                    if (mysqli_num_rows($result) > 0) {
                                        $row = mysqli_fetch_assoc($result);
                                        $what_for = $row['what_for'];
                                        if ($what_for != 'TBA') {
                                            $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name2'";
                                            $result = query($sql);
                                            $for_warehouse = [];
                                            while ($row = mysqli_fetch_assoc($result)) {
                                                $for_warehouse[] = $row['item_name'];
                                            }
                                            return $for_warehouse;
                                        } else {
                                            $sql = "SELECT response FROM no_alt";
                                            $result = query($sql);
                                            $no_alt = [];
                                            while ($row = mysqli_fetch_assoc($result)) {
                                                $no_alt[] = $row['response'];
                                            }
                                            $randomIndex = array_rand($no_alt);
                                            $randomValue = $no_alt[$randomIndex];

                                            return $randomValue;
                                        }
                                    } else {
                                        $sql = "SELECT * FROM items WHERE `item_name` = '$item_name3'";
                                        $result = query($sql);
                                        if (mysqli_num_rows($result) > 0) {
                                            $row = mysqli_fetch_assoc($result);
                                            $what_for = $row['what_for'];
                                            if ($what_for != 'TBA') {
                                                $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name3'";
                                                $result = query($sql);
                                                $for_warehouse = [];
                                                while ($row = mysqli_fetch_assoc($result)) {
                                                    $for_warehouse[] = $row['item_name'];
                                                }
                                                return $for_warehouse;
                                            } else {
                                                $sql = "SELECT response FROM no_alt";
                                                $result = query($sql);
                                                $no_alt = [];
                                                while ($row = mysqli_fetch_assoc($result)) {
                                                    $no_alt[] = $row['response'];
                                                }
                                                $randomIndex = array_rand($no_alt);
                                                $randomValue = $no_alt[$randomIndex];

                                                return $randomValue;
                                            }
                                        } else {
                                            $sql = "SELECT * FROM items WHERE `item_name` = '$item_name4'";
                                            $result = query($sql);
                                            if (mysqli_num_rows($result) > 0) {
                                                $row = mysqli_fetch_assoc($result);
                                                $what_for = $row['what_for'];
                                                if ($what_for != 'TBA') {
                                                    $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name4'";
                                                    $result = query($sql);
                                                    $for_warehouse = [];
                                                    while ($row = mysqli_fetch_assoc($result)) {
                                                        $for_warehouse[] = $row['item_name'];
                                                    }
                                                    return $for_warehouse;
                                                } else {
                                                    $sql = "SELECT response FROM no_alt";
                                                    $result = query($sql);
                                                    $no_alt = [];
                                                    while ($row = mysqli_fetch_assoc($result)) {
                                                        $no_alt[] = $row['response'];
                                                    }
                                                    $randomIndex = array_rand($no_alt);
                                                    $randomValue = $no_alt[$randomIndex];

                                                    return $randomValue;
                                                }
                                            } else {
                                                $sql = "SELECT * FROM items WHERE `item_name` = '$item_name5'";
                                                $result = query($sql);
                                                if (mysqli_num_rows($result) > 0) {
                                                    $row = mysqli_fetch_assoc($result);
                                                    $what_for = $row['what_for'];
                                                    if ($what_for != 'TBA') {
                                                        $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name5'";
                                                        $result = query($sql);
                                                        $for_warehouse = [];
                                                        while ($row = mysqli_fetch_assoc($result)) {
                                                            $for_warehouse[] = $row['item_name'];
                                                        }
                                                        return $for_warehouse;
                                                    } else {
                                                        $sql = "SELECT response FROM no_alt";
                                                        $result = query($sql);
                                                        $no_alt = [];
                                                        while ($row = mysqli_fetch_assoc($result)) {
                                                            $no_alt[] = $row['response'];
                                                        }
                                                        $randomIndex = array_rand($no_alt);
                                                        $randomValue = $no_alt[$randomIndex];

                                                        return $randomValue;
                                                    }
                                                } else {
                                                    $sql = "SELECT * FROM items WHERE `item_name` = '$item_name6'";
                                                    $result = query($sql);
                                                    if (mysqli_num_rows($result) > 0) {
                                                        $row = mysqli_fetch_assoc($result);
                                                        $what_for = $row['what_for'];
                                                        if ($what_for != 'TBA') {
                                                            $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name6'";
                                                            $result = query($sql);
                                                            $for_warehouse = [];
                                                            while ($row = mysqli_fetch_assoc($result)) {
                                                                $for_warehouse[] = $row['item_name'];
                                                            }
                                                            return $for_warehouse;
                                                        } else {
                                                            $sql = "SELECT response FROM no_alt";
                                                            $result = query($sql);
                                                            $no_alt = [];
                                                            while ($row = mysqli_fetch_assoc($result)) {
                                                                $no_alt[] = $row['response'];
                                                            }
                                                            $randomIndex = array_rand($no_alt);
                                                            $randomValue = $no_alt[$randomIndex];

                                                            return $randomValue;
                                                        }
                                                    } else {
                                                        $lengthOfTokens = count($tokens);
                                                        $input = $tokens[$lengthOfTokens - 3] . " " . $tokens[$lengthOfTokens - 2] . " " . $tokens[$lengthOfTokens - 1];
                                                        return "The item " . $input . " is not available";
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } else {
                            $sql = "SELECT response FROM no_alt";
                            $result = query($sql);
                            $no_alt = [];
                            while ($row = mysqli_fetch_assoc($result)) {
                                $no_alt[] = $row['response'];
                            }
                            $randomIndex = array_rand($no_alt);
                            $randomValue = $no_alt[$randomIndex];

                            return $randomValue;
                        }
                    }
                } else {
                    $sql = "SELECT response FROM not_know";
                    $result = query($sql);
                    $not_response = [];
                    while ($row = mysqli_fetch_assoc($result)) {
                        $not_response[] = $row['response'];
                    }
                    $randomIndex = array_rand($not_response);
                    $randomValue = $not_response[$randomIndex];
                    if ($randomValue) {
                        $sql = "SELECT instructions FROM instruction_response";
                        $result = query($sql);
                        $inst_response = [];
                        while ($row = mysqli_fetch_assoc($result)) {
                            $inst_response[] = $row['instructions'];
                        }
                        $randomIndex = array_rand($inst_response);
                        $random_inst = $inst_response[$randomIndex];
                        return $randomValue . " " . $random_inst . "Or greet me again to start over";
                    }
                }
            }
        }
    }
}
// Function to check warehouse stock
function checkStock($items)
{
    $available_items = [];
    foreach ($items as $item) {
        $sql = "SELECT * FROM warehouse WHERE item_name = '$item' AND item_qty > 0";
        $result = query($sql);
        if (mysqli_num_rows($result) > 0) {
            $available_items[] = $item;
        }
    }
    return $available_items;
}
