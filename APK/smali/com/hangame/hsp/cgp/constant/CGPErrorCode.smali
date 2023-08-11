.class public Lcom/hangame/hsp/cgp/constant/CGPErrorCode;
.super Ljava/lang/Object;


# static fields
.field public static final CGP_ERR_CGP_SERVER_NOT_RESPOND:I = 0x3e9

.field public static final CGP_ERR_CHECK_PROMOTION_TIMEOUT:I = 0x3ed

.field public static final CGP_ERR_CLIENT_DB:I = 0x3ee

.field public static final CGP_ERR_FAIL_RESPONSE:I = 0x3ef

.field public static final CGP_ERR_PROMOTION_INFO:I = 0x3ec

.field public static final CGP_ERR_PROMOTION_RESULT:I = 0x3eb

.field public static final CGP_ERR_PROMOTION_STATE:I = 0x3ea

.field public static final CGP_SUCCESS:I

.field public static final MHG_ERR_CGPLAUNCHINGFAILED:I

.field public static final MHG_ERR_HSPLOGINREQUIRED:I

.field public static final MHG_ERR_INVALIDGAMENO:I

.field public static final MHG_ERR_INVALIDMEMBERNO:I

.field public static final MHG_ERR_INVALIDSTATUSREQUEST:I

.field public static final MHG_ERR_STATUSRECORDFAILED:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x9

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->makeCode(II)I

    move-result v0

    sput v0, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->MHG_ERR_CGPLAUNCHINGFAILED:I

    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->makeCode(II)I

    move-result v0

    sput v0, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->MHG_ERR_HSPLOGINREQUIRED:I

    const/4 v0, 0x3

    invoke-static {v1, v0}, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->makeCode(II)I

    move-result v0

    sput v0, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->MHG_ERR_INVALIDGAMENO:I

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->makeCode(II)I

    move-result v0

    sput v0, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->MHG_ERR_INVALIDMEMBERNO:I

    const/4 v0, 0x5

    invoke-static {v1, v0}, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->makeCode(II)I

    move-result v0

    sput v0, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->MHG_ERR_STATUSRECORDFAILED:I

    const/4 v0, 0x6

    invoke-static {v1, v0}, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->makeCode(II)I

    move-result v0

    sput v0, Lcom/hangame/hsp/cgp/constant/CGPErrorCode;->MHG_ERR_INVALIDSTATUSREQUEST:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCode(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x10

    or-int/2addr v0, p1

    return v0
.end method
