.class final enum Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

.field public static final enum CREATED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

.field public static final enum DESTROYED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

.field public static final enum INIT:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

.field public static final enum PAUSED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

.field public static final enum REQUEST_DESTROY:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

.field public static final enum RESUMED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v3}, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->INIT:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v4}, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->CREATED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v5}, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->RESUMED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v6}, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->PAUSED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    const-string v1, "REQUEST_DESTROY"

    invoke-direct {v0, v1, v7}, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->REQUEST_DESTROY:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    new-instance v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    const-string v1, "DESTROYED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->DESTROYED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->INIT:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->CREATED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->RESUMED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->PAUSED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->REQUEST_DESTROY:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->DESTROYED:Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->$VALUES:[Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;
    .locals 1

    const-class v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->$VALUES:[Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    invoke-virtual {v0}, [Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/ui/HSPUiActivity$ActivityState;

    return-object v0
.end method
