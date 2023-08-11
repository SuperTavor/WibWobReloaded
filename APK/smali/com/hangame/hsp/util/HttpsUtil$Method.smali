.class public final enum Lcom/hangame/hsp/util/HttpsUtil$Method;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/util/HttpsUtil$Method;

.field public static final enum DELETE:Lcom/hangame/hsp/util/HttpsUtil$Method;

.field public static final enum GET:Lcom/hangame/hsp/util/HttpsUtil$Method;

.field public static final enum POST:Lcom/hangame/hsp/util/HttpsUtil$Method;

.field public static final enum PUT:Lcom/hangame/hsp/util/HttpsUtil$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/hangame/hsp/util/HttpsUtil$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/hangame/hsp/util/HttpsUtil$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/util/HttpsUtil$Method;->GET:Lcom/hangame/hsp/util/HttpsUtil$Method;

    new-instance v0, Lcom/hangame/hsp/util/HttpsUtil$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/hangame/hsp/util/HttpsUtil$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/util/HttpsUtil$Method;->POST:Lcom/hangame/hsp/util/HttpsUtil$Method;

    new-instance v0, Lcom/hangame/hsp/util/HttpsUtil$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/hangame/hsp/util/HttpsUtil$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/util/HttpsUtil$Method;->PUT:Lcom/hangame/hsp/util/HttpsUtil$Method;

    new-instance v0, Lcom/hangame/hsp/util/HttpsUtil$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/hangame/hsp/util/HttpsUtil$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hangame/hsp/util/HttpsUtil$Method;->DELETE:Lcom/hangame/hsp/util/HttpsUtil$Method;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hangame/hsp/util/HttpsUtil$Method;

    sget-object v1, Lcom/hangame/hsp/util/HttpsUtil$Method;->GET:Lcom/hangame/hsp/util/HttpsUtil$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hangame/hsp/util/HttpsUtil$Method;->POST:Lcom/hangame/hsp/util/HttpsUtil$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/util/HttpsUtil$Method;->PUT:Lcom/hangame/hsp/util/HttpsUtil$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/util/HttpsUtil$Method;->DELETE:Lcom/hangame/hsp/util/HttpsUtil$Method;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hangame/hsp/util/HttpsUtil$Method;->$VALUES:[Lcom/hangame/hsp/util/HttpsUtil$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/util/HttpsUtil$Method;
    .locals 1

    const-class v0, Lcom/hangame/hsp/util/HttpsUtil$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/util/HttpsUtil$Method;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/util/HttpsUtil$Method;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/util/HttpsUtil$Method;->$VALUES:[Lcom/hangame/hsp/util/HttpsUtil$Method;

    invoke-virtual {v0}, [Lcom/hangame/hsp/util/HttpsUtil$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/util/HttpsUtil$Method;

    return-object v0
.end method
