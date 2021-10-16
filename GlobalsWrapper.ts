import SampleNativeComponent from './SampleNativeComponent';

export const cacheNativeView = (value: typeof SampleNativeComponent) => {
  /* @ts-ignore */
  global.NativeComponent = value;
};

export const getCachedNativeView = (): typeof SampleNativeComponent => {
  /* @ts-ignore */
  return global.NativeComponent;
};
