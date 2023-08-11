.class public final enum Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

.field public static final enum HSP_PUNISHTYPE_PROFILEIMAGE:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

.field public static final enum HSP_PUNISHTYPE_TODAYWORDS:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    const-string v1, "HSP_PUNISHTYPE_TODAYWORDS"

    const-string v2, "todayWord"

    invoke-direct {v0, v1, v3, v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->HSP_PUNISHTYPE_TODAYWORDS:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    const-string v1, "HSP_PUNISHTYPE_PROFILEIMAGE"

    const-string v2, "photo"

    invoke-direct {v0, v1, v4, v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->HSP_PUNISHTYPE_PROFILEIMAGE:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->HSP_PUNISHTYPE_TODAYWORDS:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->HSP_PUNISHTYPE_PROFILEIMAGE:Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->$VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->$VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;

    return-object v0
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile$HSPPunishmentType;->value:Ljava/lang/String;

    return-object v0
.end method
