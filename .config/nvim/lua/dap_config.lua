local dap = require('dap')

-- To get rid of the error like 'set_breakpoints failed: cannot convert null to bool'
-- Go to session.lua in nvim-dap plugin source and add the following line to the aformentioned method:
-- sourceModified = false;

dap.adapters.unity = {
	type = 'executable';
	command = 'mono';
	args = {'/home/melesar/.vscode/extensions/unity.unity-debug-3.0.2/bin/UnityDebug.exe'};
	name = "Unity";
}

dap.configurations.cs = {
	{
		name = "Unity Editor";
		type = 'unity';
		request = 'launch';
		path = 'Library/EditorInstance.json';
	},
}

require'nvim-dap-virtual-text'.setup()
