use std::cmp::Ordering;

impl Solution {
    fn rev(x: i32) -> i32 {
        match x.to_string().chars().rev().collect::<String>().parse() {
            Ok(v) => v,
            Err(_) => 0,
        }
    }

    pub fn reverse(x: i32) -> i32 {
        if x.is_negative() {
            -Self::rev(x.abs())
        } else {
            Self::rev(x)
        }
    }
}
