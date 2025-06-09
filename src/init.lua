--!strict

local packages = script.Parent.roblox_packages;
local Dialogue = require(packages.Dialogue);
local DialogueMakerTypes = require(packages.DialogueMakerTypes);

type Dialogue = DialogueMakerTypes.Dialogue;
type DialogueConstructorProperties = DialogueMakerTypes.DialogueConstructorProperties;
type Effect = DialogueMakerTypes.Effect;
type Page = DialogueMakerTypes.Page;
type DialogueConstructorContent = DialogueMakerTypes.DialogueConstructorContent;
type DialogueConstructorChildren = DialogueMakerTypes.DialogueConstructorChildren;

local Message = {}

--[[
  Creates a new Dialogue of type "Message".
]]
function Message.new(content: DialogueConstructorContent, properties: DialogueConstructorProperties, children: DialogueConstructorChildren?)

  return Dialogue.new(content, {
    type = "Message" :: "Message";
    settings = properties.settings;
    runInitializationAction = properties.runInitializationAction;
    runCompletionAction = properties.runCompletionAction;
    verifyCondition = properties.verifyCondition;
  }, children);

end;

return Message;