use std::collections::HashMap;

impl Solution {
    pub fn two_sum(nums: Vec<i32>, target: i32) -> Vec<i32> {
        let mut map = HashMap::new();
        for (i, v) in nums.into_iter().enumerate() {
            let ex = target - v;
            if ex != v {
                if let Some(&oi) = map.get(&ex) {
                    return vec![oi as i32, i as i32];
                }
            }
            match map.insert(v, i) {
                Some(oi) => {
                    if ex == v {
                        return vec![oi as i32, i as i32];
                    }
                }
                None => (),
            }
        }
        panic!();
    }
}
