import { IstoriesEntityBase } from '../IstoriesEntityBase';
import type { IstoriesSDK } from '../IstoriesSDK';
import type { Control } from '../types';
import type { New, NewListMatch } from '../IstoriesTypes';
declare class NewEntity extends IstoriesEntityBase<New> {
    constructor(client: IstoriesSDK, entopts: any);
    make(this: NewEntity): NewEntity;
    list(this: any, reqmatch?: NewListMatch, ctrl?: Control): Promise<NewEntity[]>;
}
export { NewEntity };
