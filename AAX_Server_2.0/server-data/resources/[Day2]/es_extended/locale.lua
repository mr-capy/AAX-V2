Locales = {}

function _(str, ...)  -- Translate string

	if Locales['en'] ~= nil then

		if Locales['en'][str] ~= nil then
			return string.format(Locales['en'][str], ...)
		else
			return 'Translation [' .. 'en' .. '][' .. str .. '] does not exist'
		end

	else
		return 'Locale [' .. 'en' .. '] does not exist'
	end

end

function _U(str, ...) -- Translate string first char uppercase
	return tostring(_(str, ...):gsub("^%l", string.upper))
end
