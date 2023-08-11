.class final enum Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

.field public static final enum CLOSE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

.field public static final enum HIDE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

.field public static final enum ON_USER_INTERACTION:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

.field public static final enum ROTATE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

.field public static final enum SHOW:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->SHOW:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v3}, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->HIDE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v4}, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->CLOSE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v5}, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->ROTATE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    const-string v1, "ON_USER_INTERACTION"

    invoke-direct {v0, v1, v6}, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->ON_USER_INTERACTION:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->SHOW:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->HIDE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->CLOSE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->ROTATE:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->ON_USER_INTERACTION:Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->$VALUES:[Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;
    .locals 1

    const-class v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->$VALUES:[Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    invoke-virtual {v0}, [Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/ui/HSPUiLauncher$UiEvent;

    return-object v0
.end method
