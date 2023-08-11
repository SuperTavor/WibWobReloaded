.class public final enum Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

.field public static final enum HSP_GAMEMATETYPE_GAMEMATE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

.field public static final enum HSP_GAMEMATETYPE_NONE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

.field public static final enum HSP_GAMEMATETYPE_RECEIVED_PROPOSAL:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

.field public static final enum HSP_GAMEMATETYPE_SENT_PROPOSAL:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    const-string v1, "HSP_GAMEMATETYPE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_NONE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    const-string v1, "HSP_GAMEMATETYPE_SENT_PROPOSAL"

    invoke-direct {v0, v1, v3}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_SENT_PROPOSAL:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    const-string v1, "HSP_GAMEMATETYPE_RECEIVED_PROPOSAL"

    invoke-direct {v0, v1, v4}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_RECEIVED_PROPOSAL:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    new-instance v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    const-string v1, "HSP_GAMEMATETYPE_GAMEMATE"

    invoke-direct {v0, v1, v5}, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_GAMEMATE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    sget-object v1, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_NONE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_SENT_PROPOSAL:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_RECEIVED_PROPOSAL:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_GAMEMATE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->$VALUES:[Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getRelation(Ljava/lang/String;)Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;
    .locals 1

    const-string v0, "X"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_NONE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_SENT_PROPOSAL:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    goto :goto_0

    :cond_1
    const-string v0, "["

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_RECEIVED_PROPOSAL:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    goto :goto_0

    :cond_2
    const-string v0, "="

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->HSP_GAMEMATETYPE_GAMEMATE:Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->$VALUES:[Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPGameMate$HSPGameMateRelationType;

    return-object v0
.end method
