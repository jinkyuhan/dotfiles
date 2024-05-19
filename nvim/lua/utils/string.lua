local mod = {}

---@param str string
mod.trim = function(str)
  return (str:gsub("^%s*(.-)%s*$", "%1"))
end

---@param str string
mod.is_empty_string = function(str)
  return str == nil or str == ''
end

---@param str string
mod.is_not_empty_string = function(str)
  return not is_empty_string(str)
end

---@param str string
---@param idx number
---@param new_char string
mod.replace_char_by_index = function(str, idx, new_char)
  if new_char:len() ~= 1 then
    error('new_char must be a single character')
  end
  return string.sub(str, 1, idx - 1) .. new_char .. string.sub(str, idx + 1)
end

---@param str string
mod.get_nth_char = function(str, n)
  return string.sub(str, n, n)
end

---@param str string
---@param lua_pattern string
---@param replacement string
mod.replace = function(str, lua_pattern, replacement)
  return string.gsub(str, lua_pattern, replacement)
end

---@param str string
mod.escape_double_quote = function(str)
  return string.gsub(str, '"', '\\"')
end

---@param str string
mod.escape_dollar_sign = function(str)
  return string.gsub(str, '%$', '\\$')
end

---@param str string
mod.escape_question_mark = function(str)
  return string.gsub(str, '%?', '\\?')
end

return mod;
