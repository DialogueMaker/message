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
  Creates a new Dialogue object of type "Message".
]]
function Message.new(content: DialogueConstructorContent, properties: DialogueConstructorProperties?, children: DialogueConstructorChildren?)

  return Dialogue.new(content, {
    type = "Message" :: "Message";
    settings = if properties then properties.settings else nil;
    runInitializationAction = if properties then properties.runInitializationAction else nil;
    runCompletionAction = if properties then properties.runCompletionAction else nil;
    runCleanupAction = if properties then properties.runCleanupAction else nil;
    verifyCondition = if properties then properties.verifyCondition else nil;
  }, children);

end;

return Message;