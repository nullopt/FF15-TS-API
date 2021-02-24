---@class GameObjectCharacterState
---@field public CanAttack number
---@field public CanCast number
---@field public CanMove number
---@field public Immovable number
---@field public IsStealth number
---@field public RevealSpecificUnit number
---@field public Taunted number
---@field public Feared number
---@field public Fleeing number
---@field public StateSurpressed number
---@field public Asleep number
---@field public NearSight number
---@field public Ghosted number
---@field public GhostProof number
---@field public Charmed number
---@field public NoRender number
---@field public DodgePiercing number
---@field public DisableAmbientGold number
---@field public DisableAmbientXP number
---@field public ForceRenderParticles number
GameObjectCharacterState = {}

---@class BuffType
---@field public InternalBuffType number
---@field public Aura number
---@field public CombatEnchancer number
---@field public CombatDehancer number
---@field public SpellShield number
---@field public Stun number
---@field public Invisibility number
---@field public Silence number
---@field public Taunt number
---@field public Polymorph number
---@field public Slow number
---@field public Snare number
---@field public Damage number
---@field public Heal number
---@field public Haste number
---@field public SpellImmunity number
---@field public PhysicalImmunity number
---@field public Invulnerability number
---@field public SleepBuffType number
---@field public NearSightBuffType number
---@field public Frenzy number
---@field public Fear number
---@field public Charm number
---@field public Poison number
---@field public Suppression number
---@field public Blind number
---@field public Counter number
---@field public Shred number
---@field public Flee number
---@field public Knockup number
---@field public Knockback number
---@field public Disarm number
BuffType = {}

---@class GameObjectOrder
---@field public HoldPosition number
---@field public MoveTo number
---@field public AttackUnit number
---@field public AutoAttackPet number
---@field public AutoAttack number
---@field public MovePet number
---@field public AttackTo number
---@field public Stop number
GameObjectOrder = {}

---@class GameObjectType
---@field public NeutralMinionCamp number
---@field public FollowerObject number
---@field public FollowerObjectWithLerpMovement number
---@field public AIHeroClient number
---@field public obj_AI_Marker number
---@field public obj_AI_Minion number
---@field public LevelPropAI number
---@field public obj_AI_Turret number
---@field public obj_AI_TurretCommon number
---@field public obj_GeneralParticleEmitter number
---@field public TypeGameObject number
---@field public MissileClient number
---@field public DrawFX number
---@field public UnrevealedTarget number
---@field public obj_BarracksDampener number
---@field public obj_Barracks number
---@field public obj_AnimatedBuilding number
---@field public obj_Building number
---@field public obj_Lake number
---@field public obj_Levelsizer number
---@field public obj_NavPoint number
---@field public obj_SpawnPoint number
---@field public obj_LampBulb number
---@field public GrassObject number
---@field public obj_HQ number
---@field public obj_InfoPoint number
---@field public LevelPropGameObject number
---@field public LevelPropSpawnerPoint number
---@field public obj_Shop number
---@field public obj_Turret number
GameObjectType = {}

---@class CollisionFlags
---@field public None number
---@field public Grass number
---@field public Wall number
---@field public Building number
---@field public Prop number
---@field public GlobalVision number
CollisionFlags = {}

---@class SpellSlot
---@field public UnknownSlot number
---@field public Q number
---@field public W number
---@field public E number
---@field public R number
---@field public Summoner1 number
---@field public Summoner2 number
---@field public Item1 number
---@field public Item2 number
---@field public Item3 number
---@field public Item4 number
---@field public Item5 number
---@field public Item6 number
---@field public Trinket number
---@field public Recall number
---@field public OathSworn number
---@field public CapturePoint number
---@field public Internal number
SpellSlot = {}

---@class Event
Event = {}

---@class Events
---@field public OnTick Event @function OnTick()
---@field public OnDraw Event @function OnDraw()
---@field public OnReset Event @function OnReset()
---@field public OnError Event @function OnError(message:string)
---@field public OnProcessSpell Event @function OnProcessSpell(source:GameObject, args:SpellCastInfo)
---@field public OnNewPath Event @function OnNewPath(source:GameObject, paths:table, isWalk:bool, dashSpeed:number)
---@field public OnBasicAttack Event @function OnBasicAttack(source:GameObject, args:SpellCastInfo)
---@field public OnCreateObject Event @function OnCreateObject(obj:GameObject)
---@field public OnDeleteObject Event @function OnDeleteObject(obj:GameObject)
---@field public OnBuffGain Event @function OnBuffGain(obj:GameObject, buff:BuffInstance)
---@field public OnBuffLost Event @function OnBuffLost(obj:GameObject, buff:BuffInstance)
---@field public OnVisionGain Event @function OnVisionGain(obj:GameObject)
---@field public OnVisionLost Event @function OnVisionLost(obj:GameObject)
---@field public OnIssueOrder Event @function OnIssueOrder(order:number, position:D3DXVECTOR3, target:GameObject)
---@field public OnWndProc Event @function OnWndProc(hWnd:userdata, message:number, wParam:number, lParam:number)
---@field public OnSpellbookCastSpell Event @function OnSpellbookCastSpell(spellSlot:number, startPos:D3DXVECTOR3, endPos:D3DXVECTOR3, target:GameObject)
---@field public OnPlayAnimation Event @function OnPlayAnimation(source:GameObject, animationName:string)
---@field public OnUpdateChargeableSpell Event @function OnUpdateChargeableSpell(spellSlot:number, position:D3DXVECTOR3, releaseCast:bool)
---@field public OnExecuteCastFrame Event @function OnExecuteCastFrame(source:GameObject, args:SpellCastInfo)
---@field public OnStopCastSpell Event @function OnStopCastSpell(obj:GameObject, stopAnimation:bool, executeCastFrame:bool)
Events = {}

---@class SpellState
---@field public Ready number
---@field public NotAvailable number
---@field public Surpressed number
---@field public NotLearned number
---@field public Disabled number
---@field public Cooldown number
---@field public NoMana number
---@field public UnknownState number
SpellState = {}

---@class D3DXVECTOR2
---@field public x number
---@field public y number
D3DXVECTOR2 = {}

---@class D3DXVECTOR3
---@field public x number
---@field public y number
---@field public z number
D3DXVECTOR3 = {}

---@class D3DXVECTOR4
---@field public x number
---@field public y number
---@field public z number
---@field public w number
D3DXVECTOR4 = {}

---@class NavigationPath
---@field public paths D3DXVECTOR3[]
---@field public isMoving boolean
---@field public dashSpeed number
NavigationPath = {}

---@param index number
---@return D3DXVECTOR3
function NavigationPath:PathIndex(index)
end

---@class AIManager_Client
---@field public navPath NavigationPath
AIManager_Client = {}

---@class MissileClientObj
---@field public launchPos D3DXVECTOR3
---@field public destPos D3DXVECTOR3
---@field public name string
---@field public slot number
---@field public spellCaster GameObject
---@field public target GameObject
---@field public position D3DXVECTOR3
---@field public speed number
---@field public spellCastInfo SpellCastInfo
MissileClientObj = {}

---@class Perk
---@field public id number
---@field public name string
Perk = {}

---@class Avatar
---@field public perks Perk[]
Avatar = {}

---@param id number
---@return Perk
function Avatar:HasPerk(id)
end

---@class SpellData
---@field public name string
---@field public speed number
---@field public width number
---@field public overrideCastRange number
---@field public manaCost number
SpellData = {}

---@class BuffInstance
---@field public name string
---@field public hash number
---@field public type number
---@field public count number
---@field public remainingTime number
---@field public isPermanent boolean
---@field public caster GameObject
BuffInstance = {}

---@class BuffManager
---@field public buffs BuffInstance[]
BuffManager = {}

---@param type BuffType
---@return boolean
function BuffManager:HasBuffOfType(type)
end

---@overload fun(buffHash:number):BuffInstance
---@param buffName string
---@return BuffInstance
function BuffManager:HasBuff(buffName)
end

---@class CharacterIntermediate
---@field public baseAttackDamage number
---@field public baseAbilityDamage number
---@field public dodge number
---@field public crit number
---@field public armor number
---@field public spellBlock number
---@field public hpRegenRate number
---@field public parRegenRate number
---@field public movementSpeed number
---@field public attackRange number
---@field public flatPhysicalDamageMod number
---@field public flatMagicDamageMod number
---@field public percentMagicDamageMod number
---@field public flatMagicReduction number
---@field public percentMagicReduction number
---@field public baseAttackSpeed number
---@field public attackSpeedMod number
---@field public flatCastRangeMod number
---@field public percentCooldownMod number
---@field public passiveCooldownEndTime number
---@field public passiveCooldownTotalTime number
---@field public flatArmorPenetration number
---@field public percentArmorPenetration number
---@field public flatMagicPenetration number
---@field public percentMagicPenetration number
---@field public percentLifeStealMod number
---@field public percentSpellVampMod number
---@field public percentBonusArmorPenetration number
---@field public percentCritBonusArmorPenetration number
---@field public percentCritTotalArmorPenetration number
---@field public percentBonusMagicPenetration number
---@field public physicalLethality number
---@field public magicLethality number
---@field public baseHPRegenRate number
---@field public primaryARBaseRegenRateRep number
---@field public secondaryARRegenRateRep number
---@field public secondaryARBaseRegenRateRep number
---@field public percentCooldownCapMod number
---@field public percentCCReduction number
---@field public percentEXPBonus number
---@field public flatBaseAttackDamageMod number
---@field public percentBaseAttackDamageMod number
---@field public baseAttackDamageSansPercentScale number
---@field public bonusArmor number
---@field public bonusSpellBlock number
CharacterIntermediate = {}

---@class Experience
---@field public experience number
---@field public level number
---@field public spellTrainingPoints number
Experience = {}

---@class UnitInfoComponent
---@field public drawBasePosition D3DXVECTOR3
---@field public hpBarScreenPosition D3DXVECTOR2
UnitInfoComponent = {}

---@class ItemNode
---@field public itemId number
---@field public price number
---@field public maxStacks number
ItemNode = {}

---@class InventorySlotNode
---@field public itemNode ItemNode
InventorySlotNode = {}

---@class InventorySlot
---@field public inventorySlotNode InventorySlotNode
---@field public ammo number
InventorySlot = {}

---@class HeroInventory
HeroInventory = {}

---@param slot number
function HeroInventory:SellItem(slot)
end

---@param itemId number
---@return ItemNode
function HeroInventory:HasItem(itemId)
end

---@param itemId number
---@return InventorySlot
function HeroInventory:FindItemSlot(itemId)
end

---@param itemId number
function HeroInventory:BuyItem(itemId)
end

---@param slot number
---@return InventorySlot
function HeroInventory:InventorySlot(slot)
end

---@class RecallStruct
---@field public isRecalling boolean
---@field public recallName string
---@field public recallType string
RecallStruct = {}

---@class SpellDataInst
---@field public level number
---@field public baseCdTime number
---@field public cooldownTimeRemaining number
---@field public currentAmmoCount number
---@field public ammoRechargeTimeRemaining number
---@field public toggleState number
---@field public name string
---@field public spellData SpellData
---@field public castRange number
---@field public castRadius number
SpellDataInst = {}

---@class SpellCasterClient
---@field public castEndTime number
---@field public isAutoAttacking boolean
---@field public isCastingSpell boolean
---@field public isChanneling boolean
---@field public isCharging boolean
---@field public isStopped boolean
---@field public spellWasCast boolean
---@field public spellCastInfo SpellCastInfo
SpellCasterClient = {}

---@class SpellCastInfo
---@field public startPos D3DXVECTOR3
---@field public endPos D3DXVECTOR3
---@field public spellSlot number
---@field public isAutoAttack boolean
---@field public target GameObject
---@field public level number
---@field public startTime number
---@field public endTime number
---@field public spellData SpellData
---@field public windup number
SpellCastInfo = {}

---@class Spellbook
---@field public activeSpellSlot number
---@field public selectedSpellSlot number
---@field public owner GameObject
---@field public spellCasterClient SpellCasterClient
Spellbook = {}

---@param spellSlot number
function Spellbook:EvolveSpell(spellSlot)
end

---@param spellSlot number
---@return number
function Spellbook:GetSpellState(spellSlot)
end

---@param spellSlot number
---@param position D3DXVECTOR3
---@param releaseCast boolean
function Spellbook:UpdateChargeableSpell(spellSlot, position, releaseCast)
end

---@param spellSlot number
---@return boolean
function Spellbook:SpellSlotCanBeUpgraded(spellSlot)
end

---@overload fun(spellSlot:number, position:D3DXVECTOR3):boolean
---@overload fun(spellSlot:number, startPos:D3DXVECTOR3, endPos:D3DXVECTOR3):boolean
---@param spellSlot number
---@param networkId number
---@return boolean
function Spellbook:CastSpell(spellSlot, networkId)
end

---@overload fun(spellSlot:number, position:D3DXVECTOR3):boolean
---@overload fun(spellSlot:number, startPos:D3DXVECTOR3, endPos:D3DXVECTOR3):boolean
---@param spellSlot number
---@param networkId number
function Spellbook:CastSpellFast(spellSlot, networkId)
end

---@param spellSlot number
function Spellbook:LevelSpell(spellSlot)
end

---@param spellSlot number
---@return number
function Spellbook:CanUseSpell(spellSlot)
end

---@param spellSlot number
---@return SpellDataInst
function Spellbook:Spell(spellSlot)
end

---@class GameObject
---@field public aiManagerClient AIManager_Client
---@field public allShield number
---@field public asMissile MissileClientObj
---@field public attackCastDelay number
---@field public attackDelay number
---@field public attackShield number
---@field public avatar Avatar
---@field public basicAttack SpellData
---@field public boundingRadius number
---@field public buffManager BuffManager
---@field public campNumber number
---@field public canAttack boolean
---@field public canCast boolean
---@field public canMove boolean
---@field public charName string
---@field public characterActionState number
---@field public characterIntermediate CharacterIntermediate
---@field public combatType number
---@field public dampenerState string
---@field public direction D3DXVECTOR3
---@field public evolvePoints number
---@field public experience Experience
---@field public flatDamageReductionFromBarracksMinionMod number
---@field public gold number
---@field public goldTotal number
---@field public health number
---@field public healthPercent number
---@field public index number
---@field public infoComponent UnitInfoComponent
---@field public inventory HeroInventory
---@field public isAttackingPlayer boolean
---@field public isDead boolean
---@field public isInvulnerable boolean
---@field public isMelee boolean
---@field public isRanged boolean
---@field public isTargetable boolean
---@field public isValid boolean
---@field public isVisible boolean
---@field public isWindingUp boolean
---@field public isZombie boolean
---@field public magicShield number
---@field public mana number
---@field public manaPercent number
---@field public maxHealth number
---@field public maxMana number
---@field public minionLevel number
---@field public name string
---@field public networkId number
---@field public neutralMinionsKilled number
---@field public originalState number
---@field public percentDamageToBarracksMinionMod number
---@field public pet GameObject
---@field public position D3DXVECTOR3
---@field public recallStruct RecallStruct
---@field public roamState number
---@field public sar GameObject
---@field public skinName string
---@field public spellbook Spellbook
---@field public team number
---@field public type number
---@field public visibleOnScreen boolean
---@field public shutdownValue number
---@field public isWard boolean
---@field public isLaneMinion boolean
---@field public isEliteMinion boolean
---@field public isEpicMinion boolean
GameObject = {}

---@overload fun(order:GameObjectOrder, toPosition:D3DXVECTOR3):boolean
---@overload fun(order:GameObjectOrder, target:GameObject):boolean
---@param order GameObjectOrder
---@param toPosition D3DXVECTOR3
---@param target GameObject
---@param isPetCommand boolean
---@return boolean
function GameObject:IssueOrder(order, toPosition, target, isPetCommand)
end

---@overload fun(order:GameObjectOrder, toPosition:D3DXVECTOR3)
---@overload fun(order:GameObjectOrder, target:GameObject)
---@param order GameObjectOrder
---@param toPosition D3DXVECTOR3
---@param target GameObject
---@param isPetCommand boolean
function GameObject:IssueOrderFast(order, toPosition, target, isPetCommand)
end

---@param skinNum number
function GameObject:SetSkin(skinNum)
end

---@param target GameObject
function GameObject:UseObject(target)
end

---@class Camera
---@field public zoom number
---@field public minZoom number
---@field public maxZoom number
Camera = {}

---@class HudManager
---@field public activeVirtualCursorPos D3DXVECTOR3
---@field public virtualCursorPos D3DXVECTOR3
HudManager = {}

---@class TargetManager
---@field public target GameObject
TargetManager = {}

---@class pwHud
---@field public isLocked boolean
---@field public isWindowFocused boolean
---@field public hudManager HudManager
---@field public targetManager TargetManager
pwHud = {}

---@class TacticalMap
---@field public minimapX number
---@field public minimapY number
---@field public width number
---@field public height number
---@field public scaleX number
---@field public scaleY number
TacticalMap = {}

---@param p_world D3DXVECTOR3
---@return D3DXVECTOR2
function TacticalMap:WorldToMinimap(p_world)
end

---@class ChatConsole
---@field public isChatOpen boolean
ChatConsole = {}

---@class MenuGUI
MenuGUI = {}

---@param message string
function MenuGUI:SendChat(message)
end

---@class MissionInfo
---@field public gameType number
---@field public mapId number
---@field public gameId number
MissionInfo = {}

---@class RiotClock
---@field public time number
RiotClock = {}

---@class ClientFacade
---@field public region string
---@field public port number
---@field public gameID number
---@field public IP string
---@field public RiotClock RiotClock
---@field public time number
ClientFacade = {}

---@class NavMesh
--fields are broken
--[[---@field public cellWidth number
---@field public cellHeight number
---@field public heightDelta number
---@field public widthDelta number]]
NavMesh = {}

---@param position D3DXVECTOR3
---@return CollisionFlags
function NavMesh:GetCollisionFlags(position)
end

---@param position D3DXVECTOR3
---@return number
function NavMesh:QueryHeightForPosition(position)
end

---@param position D3DXVECTOR3
---@return boolean
function NavMesh:IsWall(position)
end

---@param position D3DXVECTOR3
---@return boolean
function NavMesh:IsBuilding(position)
end

---@param position D3DXVECTOR3
---@return boolean
function NavMesh:IsGrass(position)
end

---@class NetClient
---@field public ping number
NetClient = {}

---@class BuffCountTracker
BuffCountTracker = {}

---@param team number
---@param dragonType number
---@return number
function BuffCountTracker:GetTeamBuffCount(team, dragonType)
end

---@class Renderer
---@field public width number
---@field public height number
Renderer = {}

---@param p_World D3DXVECTOR3
---@return D3DXVECTOR2
function Renderer:WorldToScreen(p_World)
end

---@param p_Screen D3DXVECTOR2
---@return D3DXVECTOR3
function Renderer:ScreenToWorld(p_Screen)
end

---@class ObjectManager
ObjectManager = {}

---@param networkId number
---@return GameObject
function ObjectManager:GetUnitByNetworkId(networkId)
end

---@param index number
---@return GameObject
function ObjectManager:GetUnitByIndex(index)
end

---@return GameObject[]
function ObjectManager:GetEnemyHeroes()
end

---@return GameObject[]
function ObjectManager:GetAllyHeroes()
end

---@return GameObject[]
function ObjectManager:GetEnemyMinions()
end

---@return GameObject[]
function ObjectManager:GetAllyMinions()
end

---@return GameObject[]
function ObjectManager:GetEnemyTurrets()
end

---@return GameObject[]
function ObjectManager:GetAllyTurrets()
end

---@param type GameObjectType
---@return GameObject[]
function ObjectManager:GetObjectsByType(type)
end

---@class FontHandle
FontHandle = {}

---@class SpriteHandle
SpriteHandle = {}

---@class Color
Color = {}

---@class DrawHandler
---@field defaultFont FontHandle
DrawHandler = {}

---@param family string
---@param size number
---@return FontHandle
function DrawHandler:CreateFont(family, size)
end

---@param filePath string
---@param width number
---@param height number
---@return SpriteHandle
function DrawHandler:CreateSprite(filePath, width, height)
end

---@param rect D3DXVECTOR4
---@param color Color
function DrawHandler:FilledRect(rect, color)
end

---@param rect D3DXVECTOR4
---@param stroke_width number
---@param color Color
function DrawHandler:Rect(rect, stroke_width, color)
end

---@param rect D3DXVECTOR4
---@param stroke_width number
---@param outline Color
---@param rectc Color
function DrawHandler:OutlinedRect(rect, stroke_width, outline, rectc)
end

---@param from D3DXVECTOR2
---@param to D3DXVECTOR2
---@param color Color
function DrawHandler:Line(from, to, color)
end

---@param position D3DXVECTOR2
---@param radius number
---@param color Color
function DrawHandler:Circle(position, radius, color)
end

---@param position D3DXVECTOR3
---@param radius number
---@param color Color
function DrawHandler:Circle3D(position, radius, color)
end

---@param position D3DXVECTOR2
---@param color Color
function DrawHandler:Pixel(position, color)
end

---@param position D3DXVECTOR2
---@param square number
---@param color Color
function DrawHandler:Pixels(position, square, color)
end

---@param font FontHandle
---@param position D3DXVECTOR2
---@param text string
---@param color Color
function DrawHandler:Text(font, position, text, color)
end

---@param sprite SpriteHandle
---@param position D3DXVECTOR2
---@param alpha number
function DrawHandler:Sprite(sprite, position, alpha)
end

---@param font FontHandle
---@param text string
---@return D3DXVECTOR2
function DrawHandler:GetTextExtent(font, text)
end

---@class socket
socket = {}

---@class CoreGeometry
CoreGeometry = {}

---@param startPoint1 D3DXVECTOR3
---@param endPoint1 D3DXVECTOR3
---@param v1 number
---@param startPoint2 D3DXVECTOR3
---@param v2 number
---@param delay number
---@return number, D3DXVECTOR3
function CoreGeometry:VectorMovementCollision(startPoint1, endPoint1, v1, startPoint2, v2, delay)
end

---@param a D3DXVECTOR3
---@param b D3DXVECTOR3
---@param c D3DXVECTOR3
---@return boolean, D3DXVECTOR3
function CoreGeometry:IsProjectionOnLineSegment(a, b, c)
end

---@class PaidScript
PaidScript = {}

---@type GameObject
myHero = nil
---@type string
SCRIPT_PATH = nil
---@type string
COMMON_PATH = nil
---@type string
ScriptName = nil

---@param Event Events
---@param callback function
function AddEvent(Event, callback)
end

---@return D3DXVECTOR2
function GetCursorPos()
end

---@return number
function GetTickCount()
end

---@return string
function GetUser()
end

---@param text string
function PrintChat(text)
end

---@param vKey number
---@return boolean
function IsKeyDown(vKey)
end

---@param vKey number
---@return boolean
function IsKeyPressed(vKey)
end

---@param path string
function CreateFolder(path)
end

---@can_only_be_used_inside_OnIssueOrder
function BlockOrder()
end

---@can_only_be_used_inside_OnSpellbookCastSpell
function BlockCast()
end

---@param PaidScript PaidScript
function LoadPaidScript(PaidScript)
end

---@param PaidScript PaidScript
---@param callback function
function LoadPaidScriptAsync(PaidScript, callback)
end

---@param dependencies table
---@param callback function
function LoadDependenciesAsync(dependencies, callback)
end

---@param url string
---@param savePath string
---@param callback function
function DownloadFileAsync(url, savePath, callback)
end

---@param scriptName string
---@param folder string
---@param callback function
function DownloadInternalFileAsync(scriptName, folder, callback)
end

---@param scriptName string
---@param callback function
function GetInternalWebResultAsync(scriptName, callback)
end

---@param url string
---@param callback function
function GetWebResultAsync(url, callback)
end

---@param bool boolean
function ASYNC_SET_DEBUG(bool)
end

-- DEPRECATED API
-- function DownloadFile() return "DEPRECATED" end
-- function DownloadInternalFile() return "DEPRECATED" end
-- function GetInternalWebResult() return "DEPRECATED" end
-- function GetWebResult() return "DEPRECATED" end
