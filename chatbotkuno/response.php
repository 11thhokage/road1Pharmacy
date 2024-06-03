<?php

require_once 'database.php';

// Function to handle user input and generate response
function handleInput($input)
{
    $input = strtoupper($input);
    $tokens = explode(' ', $input);

    if (in_array('HI', $tokens) || in_array('HELLO', $tokens)) {
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
    } elseif (
        in_array('FUCK', $tokens) ||
        in_array('SHIT', $tokens) ||
        in_array('BITCH', $tokens) ||
        in_array('ASSHOLE', $tokens) ||
        in_array('CUNT', $tokens) ||
        in_array('DICK', $tokens) ||
        in_array('PUSSY', $tokens) ||
        in_array('MOTHERFUCKER', $tokens) ||
        in_array('BASTARD', $tokens) ||
        in_array('DAMN', $tokens)
    ) {
        return "We don't accept words like that";
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
                        return "No. The item " . $item_name . " has no stocks";
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
                        return "No. The item " . $item_name . " has no stocks";
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
                            return "No. The item " . $item_name . " has no stocks";
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
                        return "No. The item " . $item_name . " has no stocks";
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
                            return "No. The item " . $item_name . " has no stocks";
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
                                return "No. The item " . $item_name . " has no stocks";
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
                                    return "No. The item " . $item_name . " has no stocks";
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
                                        return "No. The item " . $item_name . " has no stocks";
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
                                            return "No. The item " . $item_name . " has no stocks";
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
                return "Currently, the medicine you are looking for is not available in our pharmacy."; // add, switch the else in check algo
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
                        return "Currently, there is no alternative yet for the medicine you are looking for that is available in our pharmacy.";
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
                        if (mysqli_num_rows($result) > 0) {
                            $row = mysqli_fetch_assoc($result);
                            $what_for = $row['what_for'];
                            $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$result_values'";
                            $result = query($sql);
                            $for_warehouse = [];
                            while ($row = mysqli_fetch_assoc($result)) {
                                $for_warehouse[] = $row['item_name'];
                            }
                            return $for_warehouse;
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
                            $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name1'";
                            $result = query($sql);
                            $for_warehouse = [];
                            while ($row = mysqli_fetch_assoc($result)) {
                                $for_warehouse[] = $row['item_name'];
                            }
                            return $for_warehouse;
                        } else {
                            $sql = "SELECT * FROM items WHERE `item_name` = '$item_name2'";
                            $result = query($sql);
                            if (mysqli_num_rows($result) > 0) {
                                $row = mysqli_fetch_assoc($result);
                                $what_for = $row['what_for'];
                                $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name1'";
                                $result = query($sql);
                                $for_warehouse = [];
                                while ($row = mysqli_fetch_assoc($result)) {
                                    $for_warehouse[] = $row['item_name'];
                                }
                                return $for_warehouse;
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
                                $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name1'";
                                $result = query($sql);
                                $for_warehouse = [];
                                while ($row = mysqli_fetch_assoc($result)) {
                                    $for_warehouse[] = $row['item_name'];
                                }
                                return $for_warehouse;
                            } else {
                                $sql = "SELECT * FROM items WHERE `item_name` = '$item_name2'";
                                $result = query($sql);
                                if (mysqli_num_rows($result) > 0) {
                                    $row = mysqli_fetch_assoc($result);
                                    $what_for = $row['what_for'];
                                    $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name1'";
                                    $result = query($sql);
                                    $for_warehouse = [];
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $for_warehouse[] = $row['item_name'];
                                    }
                                    return $for_warehouse;
                                } else {
                                    $sql = "SELECT * FROM items WHERE `item_name` = '$item_name3'";
                                    $result = query($sql);
                                    if (mysqli_num_rows($result) > 0) {
                                        $row = mysqli_fetch_assoc($result);
                                        $what_for = $row['what_for'];
                                        $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name1'";
                                        $result = query($sql);
                                        $for_warehouse = [];
                                        while ($row = mysqli_fetch_assoc($result)) {
                                            $for_warehouse[] = $row['item_name'];
                                        }
                                        return $for_warehouse;
                                    } else {
                                        $sql = "SELECT * FROM items WHERE `item_name` = '$item_name4'";
                                        $result = query($sql);
                                        if (mysqli_num_rows($result) > 0) {
                                            $row = mysqli_fetch_assoc($result);
                                            $what_for = $row['what_for'];
                                            $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name1'";
                                            $result = query($sql);
                                            $for_warehouse = [];
                                            while ($row = mysqli_fetch_assoc($result)) {
                                                $for_warehouse[] = $row['item_name'];
                                            }
                                            return $for_warehouse;
                                        } else {
                                            $sql = "SELECT * FROM items WHERE `item_name` = '$item_name5'";
                                            $result = query($sql);
                                            if (mysqli_num_rows($result) > 0) {
                                                $row = mysqli_fetch_assoc($result);
                                                $what_for = $row['what_for'];
                                                $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name1'";
                                                $result = query($sql);
                                                $for_warehouse = [];
                                                while ($row = mysqli_fetch_assoc($result)) {
                                                    $for_warehouse[] = $row['item_name'];
                                                }
                                                return $for_warehouse;
                                            } else {
                                                $sql = "SELECT * FROM items WHERE `item_name` = '$item_name6'";
                                                $result = query($sql);
                                                if (mysqli_num_rows($result) > 0) {
                                                    $row = mysqli_fetch_assoc($result);
                                                    $what_for = $row['what_for'];
                                                    $sql = "SELECT item_name FROM items WHERE what_for = '$what_for' AND item_name != '$item_name1'";
                                                    $result = query($sql);
                                                    $for_warehouse = [];
                                                    while ($row = mysqli_fetch_assoc($result)) {
                                                        $for_warehouse[] = $row['item_name'];
                                                    }
                                                    return $for_warehouse;
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
                        return "Currently, there is no alternative yet for the medicine you are looking for that is available in our pharmacy.";
                    }
                }
            } else {
                return "I don't understand that."; // add intructions for next step 
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
