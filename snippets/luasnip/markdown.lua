return {
	-- s {
	-- 	"example1",
	-- 	fmt {
	-- 		"just an {inode1}",
	-- 		{
	-- 			inode1 = i{1, "example"},
	-- 		},
	-- 	},
	-- }
	s (
		"example",
		fmt ("just an {inode1}", { inode1 = i(1, "example"), })
	)
}
