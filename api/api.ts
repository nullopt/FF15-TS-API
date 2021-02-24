export declare interface Table<K extends {} = {}, V = any> {
  length: number;
  set(key?: K, value?: V, notAllowed?: any): void;
  get(key?: K, notAllowed?: any): V;
  other(): void;
}

export declare interface GameObjectCharacterState {
  CanAttack: number;
  CanCast: number;
  CanMove: number;
  Immovable: number;
  IsStealth: number;
  RevealSpecificUnit: number;
  Taunted: number;
  Feared: number;
  Fleeing: number;
  StateSurpressed: number;
  Asleep: number;
  NearSight: number;
  Ghosted: number;
  GhostProof: number;
  Charmed: number;
  NoRender: number;
  DodgePiercing: number;
  DisableAmbientGold: number;
  DisableAmbientXP: number;
  ForceRenderParticles: number;
}

export declare interface BuffType {
  InternalBuffType: number;
  Aura: number;
  CombatEnchancer: number;
  CombatDehancer: number;
  SpellShield: number;
  Stun: number;
  Invisibility: number;
  Silence: number;
  Taunt: number;
  Polymorph: number;
  Slow: number;
  Snare: number;
  Damage: number;
  Heal: number;
  Haste: number;
  SpellImmunity: number;
  PhysicalImmunity: number;
  Invulnerability: number;
  SleepBuffType: number;
  NearSightBuffType: number;
  Frenzy: number;
  Fear: number;
  Charm: number;
  Poison: number;
  Suppression: number;
  Blind: number;
  Counter: number;
  Shred: number;
  Flee: number;
  Knockup: number;
  Knockback: number;
  Disarm: number;
}

export declare interface GameObjectOrder {
  HoldPosition: number;
  MoveTo: number;
  AttackUnit: number;
  AutoAttackPe: number;
  AutoAttack: number;
  MovePet: number;
  AttackTo: number;
  Stop: number;
}

export declare interface GameObjectType {
  NeutralMinionCamp: number;
  FollowerObject: number;
  FollowerObjectWithLerpMovement: number;
  AIHeroClient: number;
  obj_AI_Marker: number;
  obj_AI_Minion: number;
  LevelPropAI: number;
  obj_AI_Turret: number;
  obj_AI_TurretCommon: number;
  obj_GeneralParticleEmitter: number;
  TypeGameObject: number;
  MissileClient: number;
  DrawFX: number;
  UnrevealedTarget: number;
  obj_BarracksDampener: number;
  obj_Barracks: number;
  obj_AnimatedBuilding: number;
  obj_Building: number;
  obj_Lake: number;
  obj_Levelsizer: number;
  obj_NavPoint: number;
  obj_SpawnPoint: number;
  obj_LampBulb: number;
  GrassObject: number;
  obj_HQ: number;
  obj_InfoPoint: number;
  LevelPropGameObject: number;
  LevelPropSpawnerPoint: number;
  obj_Shop: number;
  obj_Turret: number;
}

export declare interface CollisionFlags {
  None: number;
  Grass: number;
  Wall: number;
  Building: number;
  Prop: number;
  GlobalVision: number;
}

export declare interface SpellSlot {
  UnknownSlot: number;
  Q: number;
  W: number;
  E: number;
  R: number;
  Summoner1: number;
  Summoner2: number;
  Item1: number;
  Item2: number;
  Item3: number;
  Item4: number;
  Item5: number;
  Item6: number;
  Trinket: number;
  Recall: number;
  OathSworn: number;
  CapturePoint: number;
  Internal: number;
}

export declare interface Event {}

export declare interface Events {
  OnTick: Event;
  OnDraw: Event;
  OnReset: Event;
  OnError: Event;
  OnProcessSpell: Event;
  OnNewPath: Event;
  OnBasicAttack: Event;
  OnCreateObject: Event;
  OnDeleteObject: Event;
  OnBuffGain: Event;
  OnBuffLost: Event;
  OnVisionGain: Event;
  OnVisionLost: Event;
  OnIssueOrder: Event;
  OnWndProc: Event;
  OnSpellbookCastSpell: Event;
  OnPlayAnimation: Event;
  OnUpdateChargeableSpell: Event;
  OnExecuteCastFrame: Event;
  OnStopCastSpell: Event;
}

export declare interface SpellState {
  Ready: number;
  NotAvailable: number;
  Surpressed: number;
  NotLearned: number;
  Disabled: number;
  Cooldown: number;
  NoMana: number;
  UnknownState: number;
}

export declare interface D3DXVECTOR2 {
  x: number;
  y: number;
}

export declare interface D3DXVECTOR3 {
  x: number;
  y: number;
  z: number;
}
export declare interface D3DXVECTOR4 {
  x: number;
  y: number;
  z: number;
  w: number;
}

export declare interface NavigationPath {
  paths: Table;
  isMoving: boolean;
  dashSpeed: number;
  PathIndex(index: number): D3DXVECTOR3;
}

export declare interface AIManager_Client {
  navPath: NavigationPath;
}

export declare interface MissileClientObj {
  launchPos: D3DXVECTOR3;
  destPos: D3DXVECTOR3;
  name: string;
  slot: number;
  spellCaster: GameObject;
  target: GameObject;
  position: D3DXVECTOR3;
  speed: number;
  spellCastInfo: SpellCastInfo;
}

export declare interface Perk {
  id: number;
  name: string;
}
export declare interface Avatar {
  perks: Table;
  HasPerk(id: number): Perk;
}

export declare interface SpellData {
  name: string;
  speed: number;
  width: number;
  overrideCastRange: number;
  manaCost: number;
}

export declare interface BuffInstance {
  name: string;
  type: number;
  count: number;
  remainingTime: number;
  isPermanent: boolean;
  caster: GameObject;
}

export declare interface BuffManager {
  HasBuffOfType(type: BuffType): boolean;
  HasBuff(buffName: string): BuffInstance;
}

export declare interface CharacterIntermediate {
  baseAttackDamage: number;
  baseAbilityDamage: number;
  dodge: number;
  crit: number;
  armor: number;
  spellBlock: number;
  hpRegenRate: number;
  parRegenRate: number;
  movementSpeed: number;
  attackRange: number;
  flatPhysicalDamageMod: number;
  flatMagicDamageMod: number;
  percentMagicDamageMod: number;
  flatMagicReduction: number;
  percentMagicReduction: number;
  baseAttackSpeed: number;
  attackSpeedMod: number;
  flatCastRangeMod: number;
  percentCooldownMod: number;
  passiveCooldownEndTime: number;
  passiveCooldownTotalTime: number;
  flatArmorPenetration: number;
  percentArmorPenetration: number;
  flatMagicPenetration: number;
  percentMagicPenetration: number;
  percentLifeStealMod: number;
  percentSpellVampMod: number;
  percentBonusArmorPenetration: number;
  percentCritBonusArmorPenetration: number;
  percentCritTotalArmorPenetration: number;
  percentBonusMagicPenetration: number;
  physicalLethality: number;
  magicLethality: number;
  baseHPRegenRate: number;
  primaryARBaseRegenRateRep: number;
  secondaryARRegenRateRep: number;
  secondaryARBaseRegenRateRep: number;
  percentCooldownCapMod: number;
  percentCCReduction: number;
  percentEXPBonus: number;
  flatBaseAttackDamageMod: number;
  percentBaseAttackDamageMod: number;
  baseAttackDamageSansPercentScale: number;
  bonusArmor: number;
  bonusSpellBlock: number;
}

export declare interface Experience {
  experience: number;
  level: number;
  spellTrainingPoints: number;
}

export declare interface UnitInfoComponent {
  drawBasePosition: D3DXVECTOR3;
  hpBarScreenPosition: D3DXVECTOR2;
}

export declare interface ItemNode {
  itemId: number;
  price: number;
  maxStacks: number;
}

export declare interface InventorySlotNode {
  itemNode: ItemNode;
}

export declare interface InventorySlot {
  inventorySlotNode: InventorySlotNode;
  ammo: number;
}
export declare interface HeroInventory {
  SellItem(slot: number): void;
  HasItem(itemId: number): ItemNode;
  FindItemSlot(itemId: number): InventorySlot;
  BuyItem(itemId: number): void;
  InventorySlot(slot: number): InventorySlot;
}

export declare interface RecallStruct {
  isRecalling: boolean;
  recallName: string;
  recallType: string;
}

export declare interface SpellDataInst {
  level: number;
  baseCdTime: number;
  cooldownTimeRemaining: number;
  currentAmmoCount: number;
  ammoRechargeTimeRemaining: number;
  toggleState: number;
  name: string;
  spellData: SpellData;
  castRange: number;
  castRadius: number;
}

export declare interface SpellCasterClient {
  castEndTime: number;
  isAutoAttacking: boolean;
  isCastingSpell: boolean;
  isChanneling: boolean;
  isCharging: boolean;
  isStopped: boolean;
  spellWasCast: boolean;
  spellCastInfo: SpellCastInfo;
}

export declare interface SpellCastInfo {
  startPos: D3DXVECTOR3;
  endPos: D3DXVECTOR3;
  spellSlot: number;
  isAutoAttack: boolean;
  target: GameObject;
  level: number;
  startTime: number;
  endTime: number;
  spellData: SpellData;
  windup: number;
}

export declare interface Spellbook {
  activeSpellSlot: number;
  selectedSpellSlot: number;
  owner: GameObject;
  spellCasterClient: SpellCasterClient;
  EvolveSpell(spellSlot: number): void;
  GetSpellState(spellSlot: number): SpellState;
  UpdateChargeableSpell(
    spellSlot: number,
    position: D3DXVECTOR3,
    releaseCast: boolean
  ): void;
  SpellSlotCanBeUpgraded(spellSlot: number): boolean;
  CastSpell(spellSlot: number, position: D3DXVECTOR3, a: undefined): boolean;
  CastSpell(
    spellSlot: number,
    startPos: D3DXVECTOR3,
    endPos: D3DXVECTOR3
  ): boolean;
  CastSpell(spellSlot: number, networkId: number, a: undefined): boolean;
  CastSpellFast(
    spellSlot: number,
    startPos: D3DXVECTOR3,
    endPos: D3DXVECTOR3
  ): void;
  LevelSpell(spellSlot: number): void;
  CanUseSpell(spellSlot: number): number;
  Spell(spellSlot: number): SpellDataInst;
}

export declare interface CollisionFlags {
  None: number;
  Grass: number;
  Wall: number;
  Building: number;
  Prop: number;
  GlobalVision: number;
}

export declare interface GameObject {
  aiManagerClient: AIManager_Client;
  allShield: number;
  asMissile: MissileClientObj;
  attackCastDelay: number;
  attackDelay: number;
  attackShield: number;
  avatar: Avatar;
  basicAttack: SpellData;
  boundingRadius: number;
  buffManager: BuffManager;
  campNumber: number;
  canAttack: boolean;
  canCast: boolean;
  canMove: boolean;
  charName: string;
  characterActionState: number;
  characterIntermediate: CharacterIntermediate;
  combatType: number;
  dampenerState: string;
  direction: D3DXVECTOR3;
  evolvePoints: number;
  experience: Experience;
  flatDamageReductionFromBarracksMinionMod: number;
  gold: number;
  goldTotal: number;
  health: number;
  healthPercent: number;
  index: number;
  infoComponent: UnitInfoComponent;
  inventory: HeroInventory;
  isAttackingPlayer: boolean;
  isDead: boolean;
  isInvulnerable: boolean;
  isMelee: boolean;
  isRanged: boolean;
  isTargetable: boolean;
  isValid: boolean;
  isVisible: boolean;
  isWindingUp: boolean;
  isZombie: boolean;
  magicShield: number;
  mana: number;
  manaPercent: number;
  maxHealth: number;
  maxMana: number;
  minionLevel: number;
  name: string;
  networkId: number;
  neutralMinionsKilled: number;
  originalState: number;
  percentDamageToBarracksMinionMod: number;
  pet: GameObject;
  position: D3DXVECTOR3;
  recallStruct: RecallStruct;
  roamState: number;
  sar: GameObject;
  skinName: string;
  spellbook: Spellbook;
  team: number;
  type: number;
  visibleOnScreen: boolean;
  shutdownValue: number;
  isWard: boolean;
  isLaneMinion: boolean;
  isEliteMinion: boolean;
  isEpicMinion: boolean;

  IssueOrder(
    order: GameObjectOrder,
    toPosition: D3DXVECTOR3,
    target: GameObject,
    isPetCommand: boolean
  ): void;
  IssueOrder(
    order: GameObjectOrder,
    target: GameObject,
    a: undefined,
    b: undefined
  ): void;
  IssueOrder(
    order: GameObjectOrder,
    toPosition: D3DXVECTOR3,
    a: undefined,
    b: undefined
  ): void;

  IssueOrderFast(
    order: GameObjectOrder,
    toPosition: D3DXVECTOR3,
    target: GameObject,
    isPetCommand: boolean
  ): void;
  IssueOrderFast(
    order: GameObjectOrder,
    target: GameObject,
    a: undefined,
    b: undefined
  ): void;
  IssueOrderFast(
    order: GameObjectOrder,
    toPosition: D3DXVECTOR3,
    a: undefined,
    b: undefined
  ): void;

  SetSkin(skinNum: number): void;

  UseObject(target: GameObject): void;
}

export declare interface Camera {
  zoom: number;
  minZoom: number;
  maxZoom: number;
}

export declare interface HudManager {
  activeVirtualCursorPos: D3DXVECTOR3;
  virtualCursorPos: D3DXVECTOR3;
}

export declare interface TargetManager {
  target: GameObject;
}

export declare interface pwHud {
  isLocked: boolean;
  isWindowFocused: boolean;
  hudManager: HudManager;
  targetManager: TargetManager;
}

export declare interface TacticalMap {
  minimapX: number;
  minimapY: number;
  width: number;
  height: number;
  scaleX: number;
  scaleY: number;

  WorldToMinimap(p_world: D3DXVECTOR3): D3DXVECTOR2;
}

export declare interface ChatConsole {
  isChatOpen: boolean;
}

export declare interface MenuGUI {
  SendChat(message: string): void;
}

export declare interface MissionInfo {
  gameType: number;
  mapId: number;
  gameId: number;
}

export declare interface RiotClock {
  time: number;
}

export declare interface ClientFacade {
  region: string;
  port: number;
  gameId: number;
  ip: string;
  RiotClock: RiotClock;
  time: number;
}

export declare interface NavMesh {
  GetCollisionFlags(position: D3DXVECTOR3): CollisionFlags;
  QueryHeightForPosition(position: D3DXVECTOR3): number;
  IsWall(position: D3DXVECTOR3): boolean;
  IsBuilding(position: D3DXVECTOR3): boolean;
  IsGrass(position: D3DXVECTOR3): boolean;
}

export declare interface NetClient {}

export declare interface BuffCountTracker {
  GetTeamBuffCount(team: number, dragonType: number): number;
}

export declare interface Renderer {
  WorldToScreen(p_world: D3DXVECTOR3): D3DXVECTOR2;
  ScreenToWorld(p_screen: D3DXVECTOR2): D3DXVECTOR2;
}

export declare interface ObjectManager {
  GetUnitByNetworkId(networkId: number): GameObject;
  GetUnitByIndex(index: number): GameObject;
  GetEnemyHeroes(): GameObject[];
  GetAllyHeroes(): GameObject[];
  GetEnemyMinions(): GameObject[];
  GetAllyMinions(): GameObject[];
  GetEnemyTurrets(): GameObject[];
  GetAllyTurrets(): GameObject[];
  GetObjectsByType(type: GameObjectType): GameObject[];
}

export declare interface FontHandle {}
export declare interface SprintHandle {}
export declare interface Color {}
export declare interface DrawHandler {
  defaultFont: FontHandle;
  CreateFond(family: string, size: number): FontHandle;
  CreateSprite(filePath: string, width: number, height: number): SprintHandle;
  FilledRect(rect: D3DXVECTOR4, color: Color): void;
  Rect(rect: D3DXVECTOR4, stroke_width: number, color: Color): void;
  OutlinedRect(
    rect: D3DXVECTOR4,
    stroke_width: number,
    outline: Color,
    rectc: Color
  ): void;
  Line(from: D3DXVECTOR2, to: D3DXVECTOR2, color: Color): void;
  Circle(position: D3DXVECTOR2, radius: number, color: Color): void;
  Circle3D(position: D3DXVECTOR2, radius: number, color: Color): void;
  Pixel(position: D3DXVECTOR2, color: Color): void;
  Text(
    font: FontHandle,
    position: D3DXVECTOR2,
    text: string,
    color: Color
  ): void;
  Sprite(sprite: SprintHandle, position: D3DXVECTOR2, alpha: number): void;
  GetTextExtent(font: FontHandle, text: string): D3DXVECTOR2;
}

export declare interface Socket {}

export declare interface CoreGeometry {
  VectorMovementCollision(
    startPoint1: D3DXVECTOR3,
    endPoint1: D3DXVECTOR3,
    v1: number,
    startPoint2: D3DXVECTOR3,
    v2: number,
    delay: number
  ): { a: number; b: D3DXVECTOR3 };
  IsProjectionOnLineSegment(
    a: D3DXVECTOR3,
    b: D3DXVECTOR3,
    c: D3DXVECTOR3
  ): { a: boolean; b: D3DXVECTOR3 };
}

export declare interface PaidScript {}

export let myHero: GameObject;
export let SCRIPT_PATH: string;
export let COMMON_PATH: string;
export let ScriptName: string;

export declare function AddEvent(Event: Event, callback: () => any): void;
export declare function GetCursorPos(): D3DXVECTOR2;
export declare function GetTickCount(): number;
export declare function GetUser(): string;
export declare function PrintChat(text: string): string;
export declare function IsKeyDown(vKey: number): boolean;
export declare function IsKeyPressed(vKey: number): boolean;
export declare function CreateFolder(path: string): void;
export declare function BlockOrder(): void;
export declare function BlockCast(): void;
export declare function LoadPaidScript(PaidScript: PaidScript): void;
export declare function LoadPaidScriptAsync(
  PaidScript: PaidScript,
  callback: () => any
): void;
export declare function LoadDependenciesAsync(
  dependencies: Table,
  callback: () => any
): void;
export declare function DownloadFileAsync(
  url: string,
  savePath: string,
  callback: () => any
): void;
export declare function DownloadInternalFileAsync(
  scriptName: string,
  folder: string,
  callback: () => any
): void;
export declare function GetInternalWebResultAsync(
  scriptName: string,
  callback: () => any
): void;
export declare function GetWebResultAsync(
  url: string,
  callback: () => any
): void;

export declare function ASYNC_SET_DEBUG(bool: boolean): void;
