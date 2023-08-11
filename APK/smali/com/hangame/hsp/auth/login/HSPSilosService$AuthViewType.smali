.class final enum Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

.field public static final enum LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

.field public static final enum MAPPING:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

.field public static final enum MAPPING_EMAIL:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

.field public static final enum MAPPING_FACEBOOK:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

.field public static final enum WELCOME:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    const-string v1, "WELCOME"

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->WELCOME:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    const-string v1, "MAPPING"

    invoke-direct {v0, v1, v4}, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->MAPPING:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    const-string v1, "MAPPING_EMAIL"

    invoke-direct {v0, v1, v5}, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->MAPPING_EMAIL:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    new-instance v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    const-string v1, "MAPPING_FACEBOOK"

    invoke-direct {v0, v1, v6}, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->MAPPING_FACEBOOK:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->WELCOME:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->LOGIN:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->MAPPING:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->MAPPING_EMAIL:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->MAPPING_FACEBOOK:Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->$VALUES:[Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->$VALUES:[Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/auth/login/HSPSilosService$AuthViewType;

    return-object v0
.end method
