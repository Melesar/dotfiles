local dap = require('dap')

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
		path = '${workspaceFolder}/Library/EditorInstance.json';
	},
}
