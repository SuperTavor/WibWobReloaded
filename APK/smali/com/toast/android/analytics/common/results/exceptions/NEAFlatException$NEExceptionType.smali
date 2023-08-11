.class public final enum Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

.field public static final enum CLIENT_PROTOCOL_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

.field public static final enum PARAMETER_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

.field public static final enum SOCKET_TIME_OUT_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

.field public static final enum UNSUPPORTEDENCODING_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

.field public static final enum URL_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;


# instance fields
.field mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    const-string v1, "PARAMETER_EXCEPTION"

    invoke-direct {v0, v1, v7, v3}, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->PARAMETER_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    new-instance v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    const-string v1, "UNSUPPORTEDENCODING_EXCEPTION"

    invoke-direct {v0, v1, v3, v4}, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->UNSUPPORTEDENCODING_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    new-instance v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    const-string v1, "CLIENT_PROTOCOL_EXCEPTION"

    invoke-direct {v0, v1, v4, v5}, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->CLIENT_PROTOCOL_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    new-instance v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    const-string v1, "URL_EXCEPTION"

    invoke-direct {v0, v1, v5, v6}, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->URL_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    new-instance v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    const-string v1, "SOCKET_TIME_OUT_EXCEPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->SOCKET_TIME_OUT_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    sget-object v1, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->PARAMETER_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->UNSUPPORTEDENCODING_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->CLIENT_PROTOCOL_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->URL_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->SOCKET_TIME_OUT_EXCEPTION:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->$VALUES:[Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->mType:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;
    .locals 1

    const-class v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    return-object v0
.end method

.method public static values()[Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->$VALUES:[Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    invoke-virtual {v0}, [Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;->mType:I

    return v0
.end method
