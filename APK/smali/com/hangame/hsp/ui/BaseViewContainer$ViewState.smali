.class public final enum Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

.field public static final enum CLOSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

.field public static final enum CREATED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

.field public static final enum INIT:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

.field public static final enum NOT_INIT:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

.field public static final enum PAUSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

.field public static final enum REQUEST_CLOSE:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

.field public static final enum RESUMED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    const-string v1, "NOT_INIT"

    invoke-direct {v0, v1, v3}, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->NOT_INIT:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    new-instance v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v4}, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->INIT:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    new-instance v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v5}, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->CREATED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    new-instance v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v6}, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->RESUMED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    new-instance v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->PAUSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    new-instance v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    const-string v1, "REQUEST_CLOSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->REQUEST_CLOSE:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    new-instance v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    const-string v1, "CLOSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->CLOSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    sget-object v1, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->NOT_INIT:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->INIT:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->CREATED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->RESUMED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->PAUSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->REQUEST_CLOSE:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->CLOSED:Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->$VALUES:[Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;
    .locals 1

    const-class v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->$VALUES:[Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    invoke-virtual {v0}, [Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/ui/BaseViewContainer$ViewState;

    return-object v0
.end method
