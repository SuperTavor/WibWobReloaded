.class public final enum Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

.field public static final enum LIBRARY_EXCEPTION:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

.field public static final enum NO_RESPONSE:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

.field public static final enum RESPONSE_FAIL:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

.field public static final enum SUCCESS:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

.field public static final enum UNKNOWN:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3, v3}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    new-instance v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    const-string v1, "RESPONSE_FAIL"

    invoke-direct {v0, v1, v4, v4}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    new-instance v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    const-string v1, "LIBRARY_EXCEPTION"

    const/16 v2, 0x63

    invoke-direct {v0, v1, v5, v2}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    new-instance v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    const-string v1, "NO_RESPONSE"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v6, v2}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->NO_RESPONSE:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    new-instance v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x384

    invoke-direct {v0, v1, v7, v2}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->UNKNOWN:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->SUCCESS:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->RESPONSE_FAIL:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->LIBRARY_EXCEPTION:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->NO_RESPONSE:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->UNKNOWN:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->$VALUES:[Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;
    .locals 5

    invoke-static {}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->values()[Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->getValue()I

    move-result v4

    if-ne p0, v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->UNKNOWN:Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;
    .locals 1

    const-class v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    return-object v0
.end method

.method public static values()[Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->$VALUES:[Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    invoke-virtual {v0}, [Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/hangame/hsp/itemdelivery/constant/ClientStatusCode;->value:I

    return v0
.end method
