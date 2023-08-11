.class public final enum Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

.field public static final enum HSP_GENDER_FEMALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

.field public static final enum HSP_GENDER_MALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

.field public static final enum HSP_GENDER_UNKNOWN:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    const-string v1, "HSP_GENDER_UNKNOWN"

    const-string v2, ""

    invoke-direct {v0, v1, v3, v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_UNKNOWN:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    const-string v1, "HSP_GENDER_MALE"

    const-string v2, "M"

    invoke-direct {v0, v1, v4, v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_MALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    new-instance v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    const-string v1, "HSP_GENDER_FEMALE"

    const-string v2, "F"

    invoke-direct {v0, v1, v5, v2}, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_FEMALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_UNKNOWN:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_MALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->HSP_GENDER_FEMALE:Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->$VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;
    .locals 1

    const-class v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->$VALUES:[Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    invoke-virtual {v0}, [Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;

    return-object v0
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/HSPDetailedProfile$HSPGender;->value:Ljava/lang/String;

    return-object v0
.end method
